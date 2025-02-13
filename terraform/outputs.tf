output "cloud_run_url" {
  value = module.cloud_run.service_url
}

output "load_balancer_frontend_ip" {
  value = module.load-balancer.load_balancer_frontend_ip
}
