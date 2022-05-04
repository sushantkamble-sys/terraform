provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "web" {
  ami = "ami-09d56f8956ab235b3"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-082db47b199e5f302"]
  key_name = "jenkins"
  tags = {
    Name = "jenkins"
  }

}