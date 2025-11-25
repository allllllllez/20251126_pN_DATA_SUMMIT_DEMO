terraform {
  required_providers {
    trocco = {
      source  = "registry.terraform.io/trocco-io/trocco"
      version = "~> 0.0"
    }
  }
}

provider "trocco" {
  region = "japan"
}
