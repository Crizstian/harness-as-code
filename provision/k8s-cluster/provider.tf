provider "google" {
  project     = "harness-lab-350713"
  region      = "us-central1"
}


terraform { 
  backend "gcs" { 
    bucket = "harness-crr-lab" 
    prefix = "terraform/gke.state" 
  } 
} 