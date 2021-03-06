# This future is called data sourcing the remote backend.
# Data source only fatches the data from outputs.

data "terraform_remote_state" "backend" {
    backend = "s3"
    config = {
        bucket = "s3-terraform-session"
        key = "session-7/backend/terraform.tfstate"
        region = "us-east-1"
    }
}

output "password" {
    value = data.terraform_remote_state.backend.outputs.db_password
}

output "username" {
    value = data.terraform_remote_state.backend.outputs.db_user
}