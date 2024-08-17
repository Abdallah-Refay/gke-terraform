resource "google_service_account" "master" {
  account_id   = "${google_container_cluster.gke.name}-master"
  display_name = "${google_container_cluster.gke.name}-master-sa"
}

resource "google_project_iam_member" "master_container_admin_bind" {
  project = var.project_id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.master.email}"
}

resource "google_project_iam_member" "master_secret_manager_viewer_bind" {
  project = var.project_id
  role    = "roles/secretmanager.secretAccessor"
  member  = "serviceAccount:${google_service_account.master.email}"
}

resource "google_service_account" "worker" {
  account_id   = "${google_container_cluster.gke.name}-worker"
  display_name = "${google_container_cluster.gke.name}-worker-sa"
}

resource "google_project_iam_member" "worker_object_viewer_bind" {
  project = var.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.worker.email}"
}
