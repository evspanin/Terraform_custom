terraform {
  required_version = ">= 1.0.0"
  required_providers {
    openstack = {
        source = "registry.terraform.io/openstack/openstack"
        version = "3.3.2"
    }
  }
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "openstack" {
  auth_url = var.os_auth_url
  user_name = var.os_username
  tenant_name = var.os_project_name
  password = var.os_password
}
