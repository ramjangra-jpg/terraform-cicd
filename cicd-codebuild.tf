resource "aws_codebuild_project" "codebuild" {
  name = "codebuild-terraform"
  service_role = aws_iam_role.tf-codebuild-role.arn

    artifacts {
    type = "NO_ARTIFACTS"
  }
  cache {
    type = "S3"
    location = aws_s3_bucket.codebuild.bucket
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = false
      status              = "DISABLED"
    }
  }

  environment {
   compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:5.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

    environment_variable {
      name  = "SOME_KEY1"
      value = "SOME_VALUE1"
    }

    environment_variable {
      name  = "SOME_KEY2"
      value = "SOME_VALUE2"
      type  = "PARAMETER_STORE"
    }
  }
  source {
    type = "GITHUB"
    location = "https://github.com/awslabs/amazon-qldb-driver-python.git"
    git_clone_depth = 1
    git_submodules_config {
      fetch_submodules = true
    }
  }
source_version = "master"

vpc_config {
  vpc_id = aws_vpc.default.id
  subnets = ["${aws_subnet.private.0.id}","${aws_subnet.private.1.id}"]
  security_group_ids = [aws_security_group.main.id]
}

tags = {
  "Environment" = "Test"
}
  
}
