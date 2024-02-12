# main.tf

resource "google_container_cluster" "my_cluster" {
  name     = "cluster-1"
  location = "us-west1"

  initial_node_count = 1
  network = "default"
  deletion_protection = false
  

  node_config {
    machine_type = "n1-standard-2"
    disk_size_gb = 75
    

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

master_auth {
  client_certificate_config {
    issue_client_certificate = false
  }
}

}
