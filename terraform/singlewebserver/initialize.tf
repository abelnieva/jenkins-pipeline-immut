#-----
# initialize the remote state with these values 
# (only need to run this once via terraform init)
#-----
terraform {
  backend "s3" {
    bucket         = "awsterraform"
    key            = "state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "lock-terraform"
  }
}
