# This is a comment
provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3-billing-02" {
    bucket = "terraform-s3-billing-02"
    tags = {
        creator = "jpummill"
        purpose = "Terraform testing"
    }
}
