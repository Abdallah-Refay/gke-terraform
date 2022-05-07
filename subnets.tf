resource "google_compute_subnetwork" "management" {
  name          = "management"
  ip_cidr_range = var.manage_subnet_cidr
  region      = var.region
  network       = google_compute_network.tf_vpc.id
}

resource "google_compute_subnetwork" "restricted" {
  name          = "restricted"
  ip_cidr_range = var.restrict_subnet_cidr
  region      = var.region
  network       = google_compute_network.tf_vpc.id
}