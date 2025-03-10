terraform {
  required_version = "~> 1.11.0"

  backend "s3" {
    bucket       = "tf-s3-state-lock-example-tfstate"
    key          = "terraform.tfstate"
    use_lockfile = true

    endpoints = {
      s3 = "http://s3.localhost.localstack.cloud:4566"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.90"

      # For localstack configuration
      s3_use_path_style           = true
      skip_credentials_validation = true
      skip_metadata_api_check     = true
      skip_requesting_account_id  = true

      endpoints = {
        ec2 = "http://localhost:4566"
        # apigateway     = "http://localhost:4566"
        # apigatewayv2   = "http://localhost:4566"
        # cloudformation = "http://localhost:4566"====
        # cloudwatch     = "http://localhost:4566"
        # dynamodb       = "http://localhost:4566"
        # ec2            = "http://localhost:4566"
        # es             = "http://localhost:4566"
        # elasticache    = "http://localhost:4566"
        # firehose       = "http://localhost:4566"
        # iam            = "http://localhost:4566"
        # kinesis        = "http://localhost:4566"
        # lambda         = "http://localhost:4566"
        # rds            = "http://localhost:4566"
        # redshift       = "http://localhost:4566"
        # route53        = "http://localhost:4566"
        # s3             = "http://s3.localhost.localstack.cloud:4566"
        # secretsmanager = "http://localhost:4566"
        # ses            = "http://localhost:4566"
        # sns            = "http://localhost:4566"
        # sqs            = "http://localhost:4566"
        # ssm            = "http://localhost:4566"
        # stepfunctions  = "http://localhost:4566"
        # sts            = "http://localhost:4566"
      }
    }
  }
}
