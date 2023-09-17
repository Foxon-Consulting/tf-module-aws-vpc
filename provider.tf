// aws provider definition in provider.tf
provider "aws" {
  region                   = "eu-west-1"
  shared_credentials_files = ["/home/user/.aws/credentials"]
}
