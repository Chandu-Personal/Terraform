variable "name" {
    type = "string"
}

variable "region" {
    default = "us-east-1"
}

variable "source_ami_name" {
    default = "amzn2-ami-hvm-*-x86_64-gp2"
}