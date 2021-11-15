output "elb_dns_name" {
  value       = aws_alb.myelb.dns_name
  description = "The domain name of the load balancer"
}

/*output "database_endpoint" {
  value = "${aws_db_instance.postgresdb.0.endpoint}"
}
*/

