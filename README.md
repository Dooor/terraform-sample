# terraform-test

## Install

please see official document.

- https://www.terraform.io/intro/getting-started/install.html

## Version

this project use v0.7.13 of terraform.

```
$ terraform -v
Terraform v0.7.13
```

## How to run

### aws_basic

#### Building infrastructure

first, you have to prepare AWS access key and AWS secret key.

then, set them to environment variables.

```
$ export TF_VAR_aws_access_key="XXXXXXXXXXXXXXXXXXXX"
$ export TF_VAR_aws_secret_key="XXXXXXXXXXXXXXXXXXXX"
```

finally, you can build infrastructure on AWS.

```
$ terraform plan services/aws_basic
$ terraform apply services/aws_basic
```

it will show public ip of launched instanc in the end of the command.

#### Destroying infrastructure

it is easy to destroy than you terraformed by terraform.

```
$ terraform plan -destroy services/aws_basic
$ terraform destroy services/aws_basic
```
