data "digitalocean_kubernetes_versions" "version" {
  version_prefix = "${var.major_version}.${var.minor_version}."
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name         = var.name
  region       = var.region
  vpc_uuid     = var.vpc_id
  auto_upgrade = true
  version      = data.digitalocean_kubernetes_versions.version.latest_version

  node_pool {
    name       = var.default_worker_pool_name
    size       = var.worker_size
    node_count = var.number_of_workers
  }

  registry_integration             = var.registry_integration
  destroy_all_associated_resources = var.destroy_all_associated_resources
}
