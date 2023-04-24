output "gke_cluster_name" {
  value = google_container_cluster.gke.name
}

output "gke_management_vm_name" {
  value = google_compute_instance.management_vm.name
}
