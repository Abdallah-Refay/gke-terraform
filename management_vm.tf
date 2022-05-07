resource "google_compute_instance" "manage-vm"{
  name         = "manage-vm"
  machine_type = "e2-small"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.management.id
  }
  
  service_account {
    email  = google_service_account.master.email
    scopes = ["cloud-platform"]
  }

}
resource "google_compute_instance" "test"{
  name         = "test-vm"
  machine_type = "e2-small"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.restricted.id
  }

}