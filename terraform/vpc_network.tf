resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  depends_on              = [module.project-factory_project_services]
}

resource "google_compute_subnetwork" "public_subnets" {
  count         = 2
  name          = "public-subnet-${count.index + 1}"
  region        = local.region
  network       = google_compute_network.vpc.id
  ip_cidr_range = "10.0.${count.index}.0/24"
}

resource "google_compute_subnetwork" "private_subnets" {
  count                    = 2
  name                     = "private-subnet-${count.index + 1}"
  region                   = local.region
  network                  = google_compute_network.vpc.id
  ip_cidr_range            = "10.0.${count.index + 2}.0/24"
  private_ip_google_access = true
}
