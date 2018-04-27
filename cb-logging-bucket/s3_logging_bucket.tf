provider "aws" {
  region     = "us-east-1"
}

resource "aws_s3_bucket" "cb_logging_bucket" {
  bucket = "cb-logging-bucket-042618"
  acl    = "log-delivery-write"
}
