output "instance_public-dns_addr" {
    description = "The public DNS address of the main server instance."
    value = aws_instance.jenkins.public_dns
}

output "instance_public-ip_addr" {
    description = "The private IP address of the main server instance."
    value = aws_instance.jenkins.public_ip
}