provider "aws" {
    region = var.region
}

data "aws_caller_identity" "current"{}

resource "aws_s3_bucket" "tfstate" {
  bucket = "test-${data.aws_caller_identity.current.account_id}"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "tfstate_locks" {
  name = "test-${data.aws_caller_identity.current.account_id}-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
