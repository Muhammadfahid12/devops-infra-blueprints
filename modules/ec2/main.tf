resource "aws_instance" "test" {

  for_each = var.instances

  instance_type = each.value.instance_type 
  ami           = each.value.ami
  subnet_id     = each.value.subnet_id
  tags = {
    Name = each.key
  }
}

