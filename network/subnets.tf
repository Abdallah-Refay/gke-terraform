resource "google_compute_subnetwork" "management" {
  name          = "${var.vpc_name}-management-subnet"
  ip_cidr_range = var.management_subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.id
}

resource "google_compute_subnetwork" "restricted" {
  name          = "${var.vpc_name}-restricted-subnet"
  ip_cidr_range = var.restricted_subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.id
}
