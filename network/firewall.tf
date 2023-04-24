resource "google_compute_firewall" "ssh" {
  name    = "${var.vpc_name}-ssh-rule"
  network = google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

