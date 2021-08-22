resource "aws_instance" "venu-instance" {
 ami = "ami-02f84cf47c23f1769"
 instance_type = "t2.micro"
 security_groups = ["${aws_security_group.venu_securitygroup.name}"]
 
 tags = {
     Name = "venu_1"
 } 
}
resource "aws_instance" "rahul-instance" {
 ami = "ami-02f84cf47c23f1769"
 instance_type = "t2.micro"
 security_groups = ["${aws_security_group.terraform.name}"]
 
 tags = {
     Name = "rahul_1"
 } 
}
resource "aws_security_group" "terraform" {
  name = "ec2instance_security"
  description = "security group"
  ingress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "security_group"
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids = []
    security_groups = []
    self = false
    } ]
  
  tags = {
    Name = "terraform"
  }
}

resource "aws_security_group" "venu_securityGroup" {
  name = "venu_securityGroup"
  description = "venu_1 security group"
  ingress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "security_group"
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids = []
    security_groups = []
    self = false
    } ]
  
  tags = {
    Name = "venu_securitygroup"
  }
}