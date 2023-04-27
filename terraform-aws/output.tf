output "instance_ip" {
    value = aws_instance.tfprod-ubuntu-docker.*.public_ip
}