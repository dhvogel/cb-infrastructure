provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "cb_remotestate_bucket" {
  bucket = "cb-remotestate-bucket-043018"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }

  logging {
    target_bucket = "cb-logging-bucket-042618"
    target_prefix = "log/remotestate"
  }
}
