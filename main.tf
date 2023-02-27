terraform {

  cloud {
    organization = "petya-business-org"

    workspaces {
      name = "state-remote-random-pet"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "random" {
}

variable "check" {}

resource "random_pet" "server" {
  keepers = {
    # Generates a new pet name on each apply
    value = var.check  
  }
}
