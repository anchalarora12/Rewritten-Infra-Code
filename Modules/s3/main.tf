resource "aws_s3_bucket" "static_site" {
  bucket = "${var.prefix}-static-site"
  website {
    index_document = "index.html"
  }
  tags = {
    Name = "${var.prefix}-static-site"
  }
}