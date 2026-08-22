module "sns_topic" {
  source  = "terraform-aws-modules/sns/aws"

   name = var.name

    tags = {
    Terraform   = "true"
    Environment = var.env
  }
}