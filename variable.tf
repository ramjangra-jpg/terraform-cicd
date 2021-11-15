variable "region" {}
variable "vpc_name" {
    default = "ProdVPC"
}
variable "cidr_block" {}

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

variable "instance_type" {}

variable "key_name" {
    default = "deployer-key"
}



variable "access_key" {}

variable "secret_key" {}

//variable "project" {}

//variable "image_id" {}

variable "volume_size_root_block_device"{
    default = "20"
}

variable "min_size" {}

variable "max_size" {}

variable "desired_capacity" {}



variable "mariadb" {
  
}
variable "mysql" {}

variable "postgresql" {}

variable "rds_instance_identifier" {
    default = "prodrds"
}

variable "instance_class" {
  
}

variable "database_name" {}

variable "database_password" {}

variable "database_user" {}

variable "app_name" {}

