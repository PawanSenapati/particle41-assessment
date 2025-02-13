module "cloud_run" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "~> 0.14"

  service_name = var.cr_service_name
  project_id   = local.project_id
  location     = var.cr_region
  image        = var.cr_image

  limits = {
    cpu    = var.cr_cpu
    memory = var.cr_memory
  }
  ports = ({
    "name" : "http1",
    "port" : 5000
  })
  service_annotations = {
    "run.googleapis.com/ingress" : var.cr_ingress_setting
  }
  container_concurrency = var.cr_concurrency
  depends_on            = [module.project-factory_project_services]
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
  depends_on = [module.project-factory_project_services]
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = module.cloud_run.location
  project  = module.cloud_run.project_id
  service  = module.cloud_run.service_name

  policy_data = data.google_iam_policy.noauth.policy_data
  depends_on  = [module.project-factory_project_services]
}
