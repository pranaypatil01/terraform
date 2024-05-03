output "vpc_output" {
   value=aws_vpc.main.id  
}
output "sg-output" {
   value=aws_security_group.sg_terraform
}
