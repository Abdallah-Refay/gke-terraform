resource "google_compute_firewall" "ssh" {
  name    = "rule"
  network = google_compute_network.tf_vpc.id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}