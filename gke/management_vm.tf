resource "google_compute_instance" "management_vm" {
  name         = "${var.gke_cluster_name}-management-vm"
  machine_type = "e2-small"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = var.management_subnet_id
  }

  service_account {
    email  = google_service_account.master.email
    scopes = ["cloud-platform"]
  }

  metadata_startup_script = <<SCRIPT
    #!/usr/bin/env sh

    # install gcloud components                   
    sudo apt-get install kubectl google-cloud-sdk-gke-gcloud-auth-plugin -y
     
    # initiate gke cluster connection 
    echo "#!/usr/bin/env sh
    gcloud container clusters get-credentials ${google_container_cluster.gke.name} --region=${var.region}" > gke_connection_init.sh
    chmod +x gke_connection_init.sh

  SCRIPT
}
