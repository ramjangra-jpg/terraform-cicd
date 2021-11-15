variable "region" {}
variable "vpc_name" {}
variable "cidr_block" {}

variable "public_subnet_cidr_blocks" {}

variable "private_subnet_cidr_blocks" {}

variable "availability_zones" {}

variable "environment" {}

variable "instance_type" {}

variable "key_name" {}



variable "access_key" {}

variable "secret_key" {}

//variable "project" {}

//variable "image_id" {}

variable "volume_size_root_block_device"{}

variable "min_size" {}

variable "max_size" {}

variable "desired_capacity" {}



variable "mariadb" {
  
}
variable "mysql" {}

variable "postgresql" {}

variable "rds_instance_identifier" {}

variable "database_name" {}

variable "database_password" {}

variable "database_user" {}

variable "app_name" {}

