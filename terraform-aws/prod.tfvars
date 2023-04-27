
#Instance vars
v_ami="ami-0a695f0d95cefc163"
v_instance_type="t2.micro"

v_tags={
        Name="tfprod-ubuntu-docker", 
        Environment="Prod"
    }


#Security group vars
v_sg_name = "tfprod-sg-ubuntu-docker"

v_ingress_rules = [
    {
        description      = "Inbound rule ssh"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Ibound rules http"
        from_port        = 80
        to_port          = 80
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
]
v_egress_rules = [
    {
        description      = "Outbound rule ssh"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    },
]