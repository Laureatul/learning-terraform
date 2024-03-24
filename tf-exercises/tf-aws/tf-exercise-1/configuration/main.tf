module "s3_bucket" {
  source        = "../modules/aws_s3_bucket"
  bucket        = var.bucket
  force_destroy = var.force_destroy
}