resource "aws_s3_bucket" "codebuild" {
  bucket = "codebuild111121000"
  acl = "private"
}
resource "aws_s3_bucket" "codepipeline" {
  bucket = "codepipeline111121000"
  acl    = "private"
}
