resource "aws_instance" "web_server" {
        ami                 = "ami-014e30c8a36252ae5"
        instance_type       = "t2.micro"
        count               = 1
}
