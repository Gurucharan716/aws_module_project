resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.my_env}-gurucharan-dynamoDB-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserID"
  attribute {
    name = "UserID"
    type = "S"
  }
  tags = {
    Name        = "${var.my_env}-gurucharan-dynamoDB-table"
  }
}