variable "name" {
    default = "sbx"
}

variable "region"
{
  default = "ap-southeast-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "sbx_key"{
  default = "sbx.pub"
}

variable "key_name" {
  default = "sbx"
}

variable "tags" {
  description = "A mapping of tags to assign to the EC2 instance"
  default     = 
  { 
       
        Environment         = "sandbox"
        Monitored           = true
        OS                  = "Ubuntu 18.04"
        Owner               = "tejashri"
  }
}

