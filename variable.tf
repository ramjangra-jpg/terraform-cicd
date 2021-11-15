variable "region" {
    type = string
}
variable "vpc_name" {
    default = "ProdVPC"
}
variable "cidr_block" {
    type = string
}

variable "public_subnet_cidr_blocks" {
    default = ["10.0.0.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
 default =    ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "availability_zones" {
  default =   ["ap-south-1a", "ap-south-1b"]
}

variable "environment" {
    default = "Production"
}

variable "instance_type" {
    type = string
}

variable "key_name" {
    default = "deployer-key"
}



variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}

//variable "project" {}

//variable "image_id" {}

variable "volume_size_root_block_device"{
    default = "20"
}

variable "min_size" {
    type = string
}

variable "max_size" {
    type = string
}

variable "desired_capacity" {
    type = string
}



variable "mariadb" {
  type = string
}
variable "mysql" {
    type = string
}

variable "postgresql" {
    type = string
}

variable "rds_instance_identifier" {
    default = "prodrds"
}

variable "instance_class" {
  type = string
}

variable "database_name" {
    type = string
}

variable "database_password" {
    type = string
}

variable "database_user" {
    type = string
}

variable "app_name" {
    type = string
}

