variable "gke_cluster_name" {
  type        = string
  description = "name for gke cluster"
}

variable "project_id" {
  type        = string
  description = "gcp project id"
}

variable "region" {
  type        = string
  description = "gcp region"
}

variable "management_subnet_cidr" {
  type        = string
  description = "cidr for management subnet that contains the management vm instance"
  default     = "10.0.1.0/24"
}

variable "restricted_subnet_cidr" {
  type        = string
  description = "cidr for restricted subnet that contains the gke cluster"
  default     = "10.0.2.0/24"
}

variable "gke_node_count" {
  type        = number
  description = "gke cluster node count"
  default     = 3
}

variable "gke_node_type" {
  type        = string
  description = "gke node pool instance type"
  default     = "e2-small"
}

variable "gke_node_disk_size" {
  type        = number
  default     = 20
  description = "gke node disk size"
}
