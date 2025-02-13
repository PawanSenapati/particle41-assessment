module "project-factory_project_services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "17.0.0"

  project_id    = local.project_id
  activate_apis = var.apis
}

module "load-balancer" {
  source        = "./modules/api_gateway"
  cloud_run_url = module.cloud_run.service_url
}
