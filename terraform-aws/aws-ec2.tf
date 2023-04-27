provider "aws"{
    region="us-east-2"
}

resource "aws_instance" "tf-ubuntu-docker" {
    ami="ami-0a695f0d95cefc163"
    instance_type ="t2.micro"
    tags = {
      "Name" = "tf-ubuntu-docker"
    }
}