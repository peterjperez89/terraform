resource "aws_instance" "vm1" {
  ami               = var.ami_id
  availability_zone = var.az
  instance_type     = var.itype
  key_name          = var.key
  vpc_security_group_ids = [
    "sg-0ce02377020eb36db",
    "sg-0ddf86a2312fb79d7",
    aws_security_group.tfsg1.id
  ]
  depends_on = [aws_security_group.tfsg1]

  tags = {
    Name = var.ec2name
    iac  = "terraform"
  }
}

resource "aws_ec2_instance_state" "vm1state" {
  instance_id = aws_instance.vm1.id
  state       = "stopped"
}

resource "aws_security_group" "tfsg1" {
  name        = "https"
  description = "allow https"
  vpc_id      = "vpc-075cec1e52d1d5e0f"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow inbound https"
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound"
  }
}