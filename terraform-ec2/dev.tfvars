ami_id="ami-0a695f0d95cefc163"

instance_type="t2.micro"

key_name = "tfprod-dockerkey"

tags={
        Name="tfprod-docker", 
        Environment="Prod"
    }


sg_name = "tfprod-sgdocker"

ingress_rule = [
    {
        description      = "SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "HTTP"
        from_port        = 80
        to_port          = 80
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
]
egress_rule = [
    {
        description      = "SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    },
]

