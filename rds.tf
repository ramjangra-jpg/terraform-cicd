/*resource "aws_db_subnet_group" "dbsg" {
   name = "mysubnetgroup"
   subnet_ids = ["${aws_subnet.private.0.id}","${aws_subnet.private.1.id}"]
}

//My Sql Deployment
resource "aws_db_instance" "mysqldb" {
  count = var.mysql ? 1 : 0
  identifier = var.rds_instance_identifier
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = var.instance_class
  name = var.database_name
  username = var.database_user
  password = var.database_password
  db_subnet_group_name = aws_db_subnet_group.dbsg.id
  vpc_security_group_ids = ["${aws_security_group.rds.id}"]
  skip_final_snapshot = true
  

}

resource "aws_db_parameter_group" "msdb" {
  name   = "rds-sql"
  family = "mysql5.7"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}

//Postgres Deployments

resource "aws_db_instance" "postgresdb" {
  count                     = var.postgresql ? 1 : 0
  identifier                = var.rds_instance_identifier
  allocated_storage        = 5 
  db_subnet_group_name     = aws_db_subnet_group.dbsg.id
  engine                   = "postgres"
  engine_version           = "13.1"
  instance_class           = var.instance_class
  name                     = var.database_name
  password                 = var.database_password
  username                 = var.database_user
  skip_final_snapshot      = true
  vpc_security_group_ids   = ["${aws_security_group.rds.id}"]
  }
  
  resource "aws_db_parameter_group" "postgresdb" {
  name   = "postgresdb"
  family = "postgres13"

 parameter {
    name  = "log_connections"
    value = "1"
  }
}


//MariaDB Deployments
/*resource "aws_db_instance" "mariadb"{
    count                     = var.mariadb ? 1 : 0
    identifier                = var.rds_instance_identifier
    allocated_storage        = 5
    engine                    = "mariadb"
    engine_version    = "10.5"
    instance_class    = "db.t2.micro"
    name                      = var.database_name
    username                  = var.database_user
    password                  = var.database_password
    db_subnet_group_name      = aws_db_subnet_group.dbsg.id
    vpc_security_group_ids    = ["${aws_security_group.rds.id}"]
    skip_final_snapshot       = true
    final_snapshot_identifier = "Ignore"
    
}*/

