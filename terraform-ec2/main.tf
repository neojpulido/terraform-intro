provider "aws" {
  region = "us-east-2"
}
module "app_platzi" {
    source = "./modules/instance"
    ami_id= var.ami_id
    instance_type =var.instance_type
    key_name = var.key_name
    tags = var.tags
    sg_name =var.sg_name
    ingress_rule=var.ingress_rule
    egress_rule = var.egress_rule
  
}
