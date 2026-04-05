terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_network" "secure_lab_net" {
  name   = "secure-lab-network"
  driver = "bridge"
  
  ipam_config {
    subnet  = var.lab_subnet
    gateway = var.lab_gateway
  }
}
