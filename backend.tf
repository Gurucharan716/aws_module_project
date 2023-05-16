# backend variable

variable "region" {
  default = "us-east-1"
}

variable "s3_state_bucket_name" {
  default = "terraform-gurucharanshettigar-state-s3-bucket"
}

variable "dynamoDB_state_table_name" {
  default = "terraform-gurucharanshettigar-state-dynamoDB-table"
}

# backend resources

resource "aws_dynamodb_table" "backend_state_s3_bucket" {
  name           = var.dynamoDB_state_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name        = var.dynamoDB_state_table_name
  }
}

resource "aws_s3_bucket" "backend_state_dynamoDB_table" {
  bucket = var.s3_state_bucket_name
  tags = {
    Name        = var.s3_state_bucket_name
  }
}