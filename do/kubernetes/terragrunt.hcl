include {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../vpc///"
}

terraform {
  source = "../k8s_cluster///"
}

inputs = {
  name = "main"
  major_version = "1"
  minor_version = "27"
  region = "ams3"
  vpc_id = dependency.vpc.outputs.vpc_id
  default_worker_pool_name = "worker-pool"
  worker_size = "s-2vcpu-4gb"
  number_of_workers = 1
  destroy_all_associated_resources = true
  registry_integration = false
}
