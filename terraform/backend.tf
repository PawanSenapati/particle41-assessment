terraform {
  backend "gcs" {
    bucket = "tf-state-file-p41" # Name of the gcs bucket to store the state file remotely
    prefix = "/p41"
  }
}