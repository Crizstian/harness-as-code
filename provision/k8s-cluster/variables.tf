variable "account_id" {
  default = "gke-service-account-id"
}
variable "display_name" {
  default = "GKE Account"
}
variable "cluster_name" {
  default = "my-gke-cluster"
}
variable "cluster_location" {
  default = "us-central1"
}
variable "node_name" {
  default = "my-node-pool"
}
variable "node_location" {
  default = "us-central1"
}
variable "node_count" {
  default = 1
}
variable "preemptible" {
  default = true
}
variable "machine_type" {
  default = "n2-standard-2"
}
