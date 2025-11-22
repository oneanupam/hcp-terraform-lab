// GA Provider credential configuration
provider "google" {
  region = var.default_region
}

// Beta Provider credential configuration
provider "google-beta" {
  region = var.default_region
}
