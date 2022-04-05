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

resource "aws_s3_bucket" "s3-billing-03" {
}


resource "aws_s3_bucket" "s3-billing-03_log_bucket" {
  bucket = "s3-billing-03-log-bucket"
}


resource "aws_s3_bucket_versioning" "s3-billing-03_log_bucket" {
  bucket = aws_s3_bucket.s3-billing-03_log_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
}

resource "aws_s3_bucket_logging" "s3-billing-03" {
  bucket = aws_s3_bucket.s3-billing-03.id

  target_bucket = aws_s3_bucket.s3-billing-03_log_bucket.id
    bucket = "terraform-s3-billing-03"
    tags = {
        creator = "jpummill"
        purpose = "Terraform testing"
    }
}
