module "cloud_run" {
  source     = "GoogleCloudPlatform/cloud-run/google"
  version    = "~> 0.14"

  service_name = var.cr_service_name
  project_id   = local.project_id
  location     = var.cr_region
  image        = var.cr_image

  limits = {
    cpu    = var.cr_cpu
    memory = var.cr_memory
  }
  service_annotations = {
    "run.googleapis.com/ingress" : var.cr_ingress_setting
  }
  container_concurrency = var.cr_concurrency
}
