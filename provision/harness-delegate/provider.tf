terraform { 
  backend "gcs" { 
    bucket = "harness-crr-lab" 
    prefix = "terraform/harness-delagate.state" 
  } 
} 

provider "google" {
  project = var.project
  region  = var.cluster_location
}

data "google_client_config" "provider" {}

data "google_container_cluster" "my_cluster" {
  name     = var.cluster_name
  location = var.cluster_location
}

provider "helm" {
  kubernetes {
    host  = "https://${data.google_container_cluster.my_cluster.endpoint}"
    token = data.google_client_config.provider.access_token
    cluster_ca_certificate = base64decode(
      data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate,
    )
  }
}

