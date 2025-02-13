output "load_balancer_frontend_ip" {
  value       = google_compute_global_forwarding_rule.default.ip_address
  description = "The frontend IP of the load balancer"
}
