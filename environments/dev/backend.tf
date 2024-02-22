terraform {
  backend "local" {
    path = "state.tfstate"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>5.17.0"
    }
  }
}

