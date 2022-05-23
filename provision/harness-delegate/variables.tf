variable "cluster_name" {
  default = ""
}
variable "project" {
  default = ""
}
variable "cluster_location" {
  default = ""
}
variable "account_id" { 
  default = "" 
  sensitive = true
}
variable "delegate_token" { 
  default = "" 
  sensitive = true
}
variable "delegate_name" { 
  default = "" 
}
variable "namespace" { 
  default = "" 
}
