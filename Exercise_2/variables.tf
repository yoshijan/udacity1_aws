# TODO: Define the variable for aws_region
variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}
