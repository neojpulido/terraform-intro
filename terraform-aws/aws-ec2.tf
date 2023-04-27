provider "aws"{
    region="us-east-2"
}

resource "aws_instance" "tfprod-ubuntu-docker" {
    ami=var.v_ami
    instance_type =var.v_instance_type
    tags = var.v_tags
    key_name = "ubuntu-docker-key"
    security_groups = [aws_security_group.tfprod-sg-ubuntu-docker.name]
}

resource "aws_security_group" "tfprod-sg-ubuntu-docker" {
  name=var.v_sg_name
 
  dynamic "ingress" {
    iterator = ingress
    for_each = var.v_ingress_rules
    content {
        description      = ingress.value.description
        from_port        = ingress.value.from_port
        to_port          = ingress.value.to_port
        protocol         = ingress.value.protocol
        cidr_blocks      = ingress.value.cidr_blocks
    }
    
  }

  dynamic "egress" {
    iterator = egress
    for_each = var.v_egress_rules
    content {
      from_port        = egress.value.from_port
      to_port          = egress.value.to_port
      protocol         = egress.value.protocol
      cidr_blocks      = egress.value.cidr_blocks
    }
    
  }

}