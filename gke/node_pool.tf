
resource "google_container_node_pool" "gke_node_pool" {
  name       = "${google_container_cluster.gke.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.gke.name
  node_count = var.gke_node_count

  node_config {
    preemptible     = true
    machine_type    = var.gke_node_type
    disk_type       = "pd-standard"
    disk_size_gb    = var.gke_node_disk_size
    service_account = google_service_account.worker.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
