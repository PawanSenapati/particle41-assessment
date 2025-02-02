resource "google_api_gateway_api" "api" {
  provider = google-beta
  api_id   = "simple-time-api"
}

resource "google_api_gateway_api_config" "config" {
  provider      = google-beta
  api           = google_api_gateway_api.api.api_id
  api_config_id = "simple-time-config"

  openapi_documents {
    document {
      path     = "openapi.yaml"
      contents = filebase64("${path.module}/openapi.yaml")
    }
  }
}

resource "google_api_gateway_gateway" "gateway" {
  provider   = google-beta
  api_config = google_api_gateway_api_config.config.id
  gateway_id = "simple-time-gateway"
  region     = var.region
}
