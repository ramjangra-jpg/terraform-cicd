resource "aws_codestarconnections_connection" "codeconnection" {
  name          = "demo"
  provider_type = "GitHub"
}
