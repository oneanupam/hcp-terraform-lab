// Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.14.0"

  required_providers {
    # Google Provider Configuration Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference
    google = {
      source  = "hashicorp/google"
      version = "~> 7.12.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 7.12.0"
    }
  }
}
