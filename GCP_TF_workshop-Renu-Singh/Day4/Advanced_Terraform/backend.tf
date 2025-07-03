terraform {
  backend "gcs" {
    bucket = "gcp-terraform-bucket-1301"  
    prefix = "terraform/state/"
  }
}
