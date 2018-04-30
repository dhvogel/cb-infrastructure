provider "aws" {
  region = "us-east-1"
}

resource "aws_kms_key" "cb_secrets_bucket_sse_key" {
  description             = "This key is used to encrypt secret bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "cb_secrets_bucket" {
  bucket = "cb-secrets-bucket-042618"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${aws_kms_key.cb_secrets_bucket_sse_key.arn}"
        sse_algorithm     = "aws:kms"
      }
    }
  }

  logging {
    target_bucket = "cb-logging-bucket-042618"
    target_prefix = "log/"
  }
}
