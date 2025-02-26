terraform {
  required_version = "1.8.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.29.0"
    }
  }
}

provider "digitalocean" {
}
