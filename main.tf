resource "aws_instance" "rahul" {
  
   ami           = "ami-02f84cf47c23f1769"
   instance_type = "t2.micro"
   security_groups = ["${aws_security_group.rahul_sg.name}"]

   tags = {
    Name = "rahul_1"
  }
}
resource "aws_security_group" "rahul_sg" {
  name = "instance security"
  description = "rahul security group"
  ingress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "rahul_security_group"
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids = []
    security_groups = []
    self = false
    } ]
  
  tags = {
    Name = "rahul_sg"
  }
}
