output "ec2_id" {
    value = aws_instance.myweb.id
}

output "ec2_pub_ip" {
  value = aws_instance.web.mypublic_ip
}
