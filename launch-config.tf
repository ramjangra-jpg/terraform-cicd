data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}

resource "aws_launch_configuration" "lconfig" {
  name_prefix = "LaunchConfig form Terraform"
  image_id = data.aws_ami.ubuntu.id //var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [aws_security_group.main.id]
  associate_public_ip_address = true
  user_data = file("userdata.sh")
  root_block_device {
    volume_size = var.volume_size_root_block_device
  }
  
}