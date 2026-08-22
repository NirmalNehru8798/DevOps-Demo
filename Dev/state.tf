terraform {
    backend "s3" {
        bucket = "test-362268463106"
        key    = "test/dev/terraform.tfstate"
        region         = "eu-north-1"
        dynamodb_table = "test-362268463106-locks"
        encrypt        = true
    }
}