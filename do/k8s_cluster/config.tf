terraform {
  required_version = "1.0.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.29.0"
    }
  }
}

provider "digitalocean" {
}

