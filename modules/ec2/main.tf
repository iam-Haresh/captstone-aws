resource "aws_instance" "app" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_ids[0]
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]

  tags = {
    Name = "App-Machine"
  }
}

resource "aws_instance" "tools" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_ids[1]
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]

  tags = {
    Name = "Tools-Machine"
  }
}

output "app_public_ip" {
  value = aws_instance.app.public_ip
}

output "tools_public_ip" {
  value = aws_instance.tools.public_ip
}
