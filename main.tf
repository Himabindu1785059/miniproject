resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           =var.ami

  instance_type = var.instance_type
  key_name      = "key pair9"


  tags = {
    Name  = "Terraform-${count.index + 1}"
  }
}