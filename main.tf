locals {
  gke_cluster_name = "${var.gke_cluster_name}-gke-cluster"
}

module "vpc" {
  source                 = "./network"
  vpc_name               = "${local.gke_cluster_name}-vpc"
  project_id             = var.project_id
  region                 = var.region
  management_subnet_cidr = var.management_subnet_cidr
  restricted_subnet_cidr = var.restricted_subnet_cidr
}

module "gke" {
  source                      = "./gke"
  gke_cluster_name            = local.gke_cluster_name
  project_id                  = var.project_id
  region                      = var.region
  vpc_self_link               = module.vpc.vpc_self_link
  management_subnet_id        = module.vpc.management_subnet_id
  management_subnet_cidr      = module.vpc.management_subnet_cidr
  restricted_subnet_self_link = module.vpc.restricted_subnet_self_link
}
