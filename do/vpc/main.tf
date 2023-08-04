resource "digitalocean_vpc" "main" {
  name        = "main"
  region      = "ams3"
  description = "Main VPC for my infrastructure."
  ip_range    = "10.0.0.0/16"
}
