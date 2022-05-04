provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "web" {
  ami = "data.aws_ami.jenkins.id"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-082db47b199e5f302"]
  key_name = "jenkins"
  tags = {
    Name = "jenkins"
  }

}