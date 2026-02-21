resource "aws_instance" "example" {
    count = 10
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids  = [aws_security_group.allow-tls.id]
    tags = {
        Name = var.instances[count.index]
        Project = "roboshop"
  }
}

resource "aws_security_group" "allow-tls" {
 name = "allow-all-terraform"
  egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
    tags = var.sg_tags
}

