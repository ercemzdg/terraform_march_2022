terraform {
  backend "s3" {
    bucket = "s3-terraform-session"
    key    = "session-5/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-march-2020-lock"
  }
}



# Remote beckend is plugin. Plugin is a feature.