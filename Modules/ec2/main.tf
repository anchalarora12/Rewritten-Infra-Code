resource "aws_instance" "frontend" {
  ami           = "ami-12345678"
  instance_type = "t3.micro"
  key_name      = "default"
  tags = {
    Name = "${var.prefix}-frontend"
  }
}