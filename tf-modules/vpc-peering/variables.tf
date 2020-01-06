variable "name" {
  description = ""
}

variable "auto_accept_peering" {
  description = ""
  default = true
}

variable "tags" {
  type = "map"
  description = ""
  default     = {}
}

####################
## Requester Info ##
####################

variable "this_vpc_id" {
  description = ""
}

variable "this_cidr_block" {
  description = ""
}

variable "this_route_table_ids" {
  description = ""
  type = "list"
  default = []
}

###################
## Accepter Info ##
###################

variable "peer_account" {
  description = "description/workspace name of the account being peered to"
}

variable "peer_vpc_id" {
  description = ""
}

variable "peer_region" {
  description = ""
}

#variable "peer_profile" {
#  description = ""
#}

variable "peer_cidr_block" {
  description = ""
}

variable "peer_route_table_ids" {
  description = ""
  type = "list"
  default = []
}

variable "peer_secondary_cidr" {
  default = false
}

variable "secondary_cidr" {
  default = ""
}

variable "acceptor_secondary_cidr" {
  default = false
}

variable "acceptor_secondary_cidr_ip" {
  default = ""
}