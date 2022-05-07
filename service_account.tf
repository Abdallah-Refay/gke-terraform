resource "google_service_account" "master" {
  account_id = "master"
  display_name = "master-sa"
}

resource "google_project_iam_member" "master_sa_bind" {
  project = var.project_id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.master.email}"
}

resource "google_service_account" "worker" {
  account_id = "worker"
  display_name = "worker-sa"
}

resource "google_project_iam_member" "worker_sa_bind" {
  project = var.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.worker.email}"
}