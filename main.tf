variable "acl" {
  type = string
  default = "public-read"
}

resource "aws_s3_bucket" "b" {
  bucket        = "b"
  acl           = var.acl
  force_destroy = true
  tags = {
    Name        = "b"
  }
}
