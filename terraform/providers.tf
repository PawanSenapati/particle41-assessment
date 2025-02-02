provider "google" {
  project     = local.project_id
  region      = local.region
  # credentials = var.gcp_sa_key
}

provider "google-beta" {
  project = local.project_id
  region  = local.region
  # credentials = var.gcp_sa_key
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.43.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.26.0"
    }
  }
}
