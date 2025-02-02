# Project APIs
apis = ["serviceusage.googleapis.com", "run.googleapis.com", "compute.googleapis.com", "cloudbuild.googleapis.com", "cloudresourcemanager.googleapis.com"]

# Cloud Run Variable Values
cr_service_name = "simple-time-service"
cr_region       = "us-central1"
cr_image           = "pawansenapati/p41-assessment:latest"
cr_ingress_setting = "all"
cr_concurrency     = 2
cr_cpu             = "2"
cr_memory          = "1Gi"
cr_cpu_idle        = false

# VPC Network Variable Values
vpc_name = "p41"