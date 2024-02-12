terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.14.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "office-411914"
  region = "us-central1"
  credentials = "keys.json"
}
