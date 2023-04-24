output "management_subnet_cidr" {
  value = google_compute_subnetwork.management.ip_cidr_range
}

output "vpc_self_link" {
  value = google_compute_network.vpc.self_link
}

output "restricted_subnet_self_link" {
  value = google_compute_subnetwork.restricted.self_link
}

output "management_subnet_id" {
  value = google_compute_subnetwork.management.id
}
