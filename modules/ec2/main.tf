resource "aws_instance" "myweb" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  subnet_id =  var.subnet_id
  key_name        = var.key_name
  vpc_security_group_ids = [var.ec2_security_group_id]
  user_data = file("${path.module}/user-data.sh")
  #key_name= var.key_name
  tags = {
    Name = var.ec2_name
  }
}
resource "aws_eip" "lb" {
  instance = aws_instance.myweb.id
  vpc      = true
}
