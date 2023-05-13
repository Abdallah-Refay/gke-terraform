resource "google_container_cluster" "gke" {
  name                     = var.gke_cluster_name
  location                 = var.region
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.vpc_self_link
  subnetwork               = var.restricted_subnet_self_link

  node_locations = [
    "${var.region}-b"
  ]
  master_authorized_networks_config {

    cidr_blocks {
      cidr_block   = var.management_subnet_cidr
      display_name = "managment-cidr"
    }

  }
  ip_allocation_policy {}

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = "192.168.1.0/28"
  }
}
