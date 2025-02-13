resource "google_api_gateway_api" "api" {
  provider = google-beta
  api_id   = "simple-time-api"
}

resource "google_compute_backend_service" "default" {
  name                  = "cloud-run-backend"
  enable_cdn            = true
  protocol              = "HTTP"
  port_name             = "http"
  load_balancing_scheme = "EXTERNAL"

  backend {
    group = var.cloud_run_url
  }
}

resource "google_compute_url_map" "default" {
  name            = "cloud-run-url-map"
  default_service = google_compute_backend_service.default.id
}

resource "google_compute_target_http_proxy" "default" {
  name    = "http-proxy"
  url_map = google_compute_url_map.default.id
}

resource "google_compute_global_forwarding_rule" "default" {
  name       = "http-forwarding-rule"
  target     = google_compute_target_http_proxy.default.id
  port_range = "80"
}

resource "google_storage_bucket" "image_bucket" {
  name     = "image-store-bucket"
  location = "US"
}

resource "google_compute_backend_bucket" "cdn_backend" {
  name        = "cdn-backend"
  bucket_name = google_storage_bucket.image_bucket.name
  enable_cdn  = true
}

