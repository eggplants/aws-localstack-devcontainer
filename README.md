# My sandbox for Terraform AWS Provider

## Setup

1. Install [requirements](https://code.visualstudio.com/docs/devcontainers/containers#_installation)
1. Clone and open this repository with VSCode or `devcontainer open ./path/to/repo`
1. Open Dev Container

## Example

In the terminal on Dev Container:

```bash
cd env/exmaple_ec2
terraform init
terraform plan
terraform apply
```

## Template

<details>

<summary><code>provider.tf</code></summary>

```hcl
terraform {
  required_version = "~> 1.11.0"

  backend "s3" {
    bucket       = "tf-s3-state-lock-<>-tfstate"
    key          = "<>.tfstate"
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
```

</details>
