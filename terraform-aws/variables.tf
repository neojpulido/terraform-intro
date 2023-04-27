variable "v_ami" {
  type = string
  description = "Identificador de la imagen."
}

variable "v_instance_type" {
    type = string
    description = "Tipo de instancia."
  
}

variable "v_tags" {
    type = map
    description = "Colección de tags de la instancia."
  
}

variable "v_sg_name" {
  type = string
  description = "Nombre del security groups"
  
}

variable "v_ingress_rules" {
  
}

variable "v_egress_rules" {
  
}