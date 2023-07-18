
resource "aws_instance" "app_server" {
  ami                         = "ami-06ca3ca175f37dd66"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = ["sg-021c878de93850578"]
  subnet_id                   = "subnet-066e9e8fb8b05eee8" # pulbic subnet 1a
  associate_public_ip_address = true # ask aws to generate a public IP addr
  tags = {
    Name = var.instance_name
  }
}
