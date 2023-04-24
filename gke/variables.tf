variable "gke_cluster_name" {
  type        = string
  description = "name for gke cluster"
}

variable "project_id" {
  type        = string
  description = "gcp project id"
}

variable "gke_node_count" {
  type        = number
  description = "gke cluster node count"
  default     = 3
}

variable "region" {
  type        = string
  description = "gcp region"
}

variable "vpc_self_link" {
  type        = string
  description = "vpc self link"
}

variable "restricted_subnet_self_link" {
  type        = string
  description = "restricted subnet self link"
}


variable "management_subnet_id" {
  type        = string
  description = "id for management subnet that contains the management vm instance"
}

variable "management_subnet_cidr" {
  type        = string
  description = "cidr for management subnet that contains the management vm instance"
}

