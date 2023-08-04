variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "minor_version" {
  description = "The minor version of the Kubernetes cluster"
  type        = string
}

variable "major_version" {
  description = "The major version of the Kubernetes cluster"
  type        = string
}

variable "name" {
  description = "Name of the cluster"
  type        = string
}

variable "region" {
  description = "Region of the cluster"
  type        = string
}

variable "default_worker_pool_name" {
  description = "Name of the default worker pool"
  type        = string
}

variable "worker_size" {
  description = "Size of the worker nodes"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "number_of_workers" {
  description = "Number of worker nodes"
  type        = number
  default     = 1
}

variable "destroy_all_associated_resources" {
  description = "Destroy all associated resources on cluster deletion."
  type        = bool
  default     = false
}

variable "registry_integration" {
  description = "Enable registry integration"
  type        = bool
}
