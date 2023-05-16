resource "aws_s3_bucket" "my_app_s3_bucket" {
  bucket = "${var.my_env}-gurucharan-s3-bucket"
  tags = {
    Name        = "${var.my_env}-gurucharan-s3-bucket"
  }
}