resource "aws_instance" "venu-instance" {
 ami = "ami-02f84cf47c23f1769"
 instance_type = "t2.micro"
 
 tags = {
     Name = "venu_1"
 } 
}
resource "aws_instance" "rahul-instance" {
 ami = "ami-02f84cf47c23f1769"
 instance_type = "t2.micro"
 
 tags = {
     Name = "rahul_1"
 } 
}