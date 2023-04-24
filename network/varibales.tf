variable "vpc_name" {
  type        = string
  description = "vpc name"
}

variable "region" {
  type        = string
  description = "gcp region"
}

variable "management_subnet_cidr" {
  type        = string
  description = "cidr for management subnet that contains the management vm instance"
}

variable "restricted_subnet_cidr" {
  type        = string
  description = "cidr for restricted subnet that contains the gke cluster"
}

variable "project_id" {
  type        = string
  description = "gcp project id"
}
