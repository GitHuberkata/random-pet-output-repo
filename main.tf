
# The code creates state on the TFC and generates random_pet name which is provided in the output
terraform {

 backend "remote" {
    organization = "petya-business-org"

    workspaces {
      name = "state-remote-random-pet2"
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

resource "random_pet" "server" {
  keepers = {
  }
}
