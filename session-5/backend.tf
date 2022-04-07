terraform {
    backend "s3" {
      bucket = "s3-terraform-session"
      key = "session-5/terraform.tfstate"
      region = "us-east-1"
    }
}



# Remote beckend is plugin. Plugin is a feature.