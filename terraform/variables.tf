# variable "gcp_sa_key" {
#   type        = string
#   description = "gcp credentials"
# }

# Project APIs
variable "apis" {
  type        = list(string)
  description = "list of APIs to be enabled"
}

# Cloud Run Variables
variable "cr_service_name" {
  description = "Cloud Run Service Name"
  type        = string
}

variable "cr_region" {
  description = "Cloud Run deployment region"
  type        = string
  default     = "us-central1"
}

variable "cr_image" {
  description = "Cloud Run Image"
  type        = string
}

variable "cr_ingress_setting" {
  description = "Cloud Run Ingress Settings"
  type        = string
}

variable "cr_concurrency" {
  type        = number
  description = "Cloud Run Concurrency"
}

variable "cr_cpu" {
  type        = string
  description = "vCPUs for Cloud Run"
}

variable "cr_memory" {
  type        = string
  description = "Memeory for Cloud Run"
}

variable "cr_cpu_idle" {
  type        = bool
  description = "true if CPU allocated only during requests/false is CPU is always allocated"
}

# VPC Network Variables
variable "vpc_name" {
    type = string
    description = "name of the vpc network"
}