terraform {
    backend "s3" 
  {
    bucket = "terraform-sbx-s3"
    key    = "sbx-vpc/sbx/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  
  assume_role {
    role_arn = "arn:aws:iam::421315136737:role/Terraform-role"
  }
  region = "${var.region}"
}

## VPC remote state file


data "terraform_remote_state" "sbx-vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-sbx-s3"
    key    = "sbx-vpc-new/terraform.tfstate"
    region = "ap-southeast-1"
  }
}




### IAM Role

/*data "template_file" "policy" {
    template            = "${file("iam_role_policy.json")}"
}*/


module "sbx_role" {
    source = "../tf-modules/ec2/ec2-iam-role"
    name = "sbx_role_windows"
    description = "sbx role for ec2 policy and ec2_ssm_policy_attachment"
    policy_arn = ["arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
    }


/*resource "aws_iam_role_policy" "sbx_ec2_policy" {
  name_prefix = "${var.name}-policy"
  role        = "sbx_role"
  policy       = "${data.template_file.policy.rendered}"
}*/



 module "sbx_windows_sg" {
    source = "../tf-modules/ec2/security-group"

  name        = "${var.name}-sg"
  description = "Security group for sbx EC2 instance"
  vpc_id      = "${data.terraform_remote_state.sbx-vpc.vpc_id}"
  tags        = "${var.tags}"
    
    
    
     ingress_with_cidr_blocks   = [

      {
        from_port                   = 5985
        to_port                     = 5985
        protocol                    = "tcp"
        description                 = "Inbound Access from Cloud9"
        cidr_blocks                 = "172.31.30.130/32"
      },
      {
        from_port                   = 5985
        to_port                     = 5985
        protocol                    = "tcp"
        description                 = "Inbound Access from demo instance"
        cidr_blocks                 = "10.2.3.148/32"
      },
      {
        from_port                   = 3389
        to_port                     = 3389
        protocol                    = "tcp"
        description                 = "Inbound Access from local"
        cidr_blocks                 = "150.129.156.21/32"
      },
     
      
      ]

    egress_with_cidr_blocks   = [
      {
        from_port                   = 0
        to_port                     = 65535
        protocol                    = "all"
        description                 = "Outbound Access"
        cidr_blocks                 = "0.0.0.0/0"
      }
    ]
    
   tags  = "${var.tags}"
}


module "sbx_windows_instance" {
   source = "../tf-modules/ec2/ec2-instance"

    name                      = "${var.name}-windows"
    ami                       = "ami-0e1b9b93a7ae09d48"
    instance_type             = "${var.instance_type}"
    key_name                  = "${var.key_name}"
    user_data                 = "${file("windows-user-data.ps1")}"
    subnet_id                 = "subnet-85fa1de3"
    vpc_security_group_ids    = ["${module.sbx_windows_sg.this_security_group_id}"]
    iam_instance_profile      = "${module.sbx_role.name}"
    associate_public_ip_address = "false"  ## change it to true when you start the instance
    root_block_device         = [{
                                volume_type = "gp2"
                                volume_size = 30
                                delete_on_termination = true  
                                }]
    
    tags                       = "${merge(var.tags, map("OS","windows-2012"))}"
    volume_tags                = "${var.tags}"
    
    }