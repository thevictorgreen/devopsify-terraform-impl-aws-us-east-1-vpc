variable "region" {
  type = map(string)
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

# inf_01_vpc_flowlogs
variable "environment" {
  type = string
  default = "AAAAA"
}

variable "proto_vpc_cidr_block" {
  description = "Slash 16 cidr block for this vpc"
  type = string
  default = "BBBBB"
}

variable "proto_vpc_instance_tenancy" {
  description = "Instance Tenancy"
  type = string
  default = "default"
}

variable "proto_vpc_enable_dns_support" {
  description = "Dns Support"
  type = bool
  default = true
}

variable "proto_vpc_enable_dns_hostnames" {
  description = "DNS Hostnames"
  type = bool
  default = false
}

variable "proto_vpc_enable_classiclink" {
  description = "Classic Link"
  type = bool
  default = false
}

variable "proto_vpc_enable_classiclink_dns_support" {
  description = "Classic Link DNS Support"
  type = bool
  default = false
}

variable "proto_vpc_assign_generated_ipv6_cidr_block" {
  description = "Generate IPV6 CIDR Block"
  type = bool
  default = false
}

variable "vpc_accept_flow_logs_destination" {
  description = "Log Destination"
  type = string
  default = "arn:aws:s3:::onekloud-AAAAA-infra/vpclogs/accept"
}

variable "vpc_reject_flow_logs_destination" {
  description = "Log Destination"
  type = string
  default = "arn:aws:s3:::onekloud-AAAAA-infra/vpclogs/reject"
}

variable "public_subnet_us_east_1a_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "CCCCC"
}

variable "public_subnet_us_east_1a_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1b_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "DDDDD"
}

variable "public_subnet_us_east_1b_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1c_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "EEEEE"
}

variable "public_subnet_us_east_1c_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1d_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "FFFFF"
}

variable "public_subnet_us_east_1d_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1e_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "GGGGG"
}

variable "public_subnet_us_east_1e_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "public_subnet_us_east_1f_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "HHHHH"
}

variable "public_subnet_us_east_1f_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}

variable "private_subnet_us_east_1a_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "IIIII"
}

variable "private_subnet_us_east_1a_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1b_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "JJJJJ"
}

variable "private_subnet_us_east_1b_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1c_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "KKKKK"
}

variable "private_subnet_us_east_1c_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1d_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "LLLLL"
}

variable "private_subnet_us_east_1d_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1e_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "MMMMM"
}

variable "private_subnet_us_east_1e_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = false
}

variable "private_subnet_us_east_1f_cidr_block" {
  description = "CIDR BLOCK"
  type = string
  default = "NNNNN"
}

variable "private_subnet_us_east_1f_map_public_ip_on_launch" {
  description = "MAP PUBLIC IP ON LAUNCH"
  type = bool
  default = true
}


# inf_07_route53.tf
variable "domain" {
  description = "Primary domain for this vpc"
  type = string
  default = "thekracken.io"
}

data "aws_route53_zone" "dns_public_zone" {
  name = "thekracken.io."
  private_zone = false
}

variable "dns_private_zone_name" {
  description = "private_zone"
  type = string
  default = "AAAAA.thekracken.io."
}

variable "dns_reverse_zone_name" {
  description = "reverse zone"
  type = string
  default = "10.10.in-addr.arpa."
}


# other variables
variable "subnets" {
  type = map(string)
  default = {
    "AAAAA-useast1-private-us-east-1a-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-private-us-east-1b-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-private-us-east-1c-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-private-us-east-1d-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-private-us-east-1e-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-private-us-east-1f-sn" = "COPY FROM <terraform output>"

    "AAAAA-useast1-public-us-east-1a-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-public-us-east-1b-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-public-us-east-1c-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-public-us-east-1d-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-public-us-east-1e-sn" = "COPY FROM <terraform output>"
    "AAAAA-useast1-public-us-east-1f-sn" = "COPY FROM <terraform output>"
  }
}

variable "secgroups" {
  type = map(string)
  default = {
    "AAAAA-useast1-bastion-security-group" = "COPY FROM <terraform output>"
    "AAAAA-useast1-cluster-security-group" = "COPY FROM <terraform output>"
    "AAAAA-useast1-private-security-group" = "COPY FROM <terraform output>"
    "AAAAA-useast1-public-security-group"  = "COPY FROM <terraform output>"
  }
}

variable "amis" {
  type = map(string)
  default = {
    "ubuntu_18_04" = "ami-064a0193585662d74"
    "centos_7" = "ami-02eac2c0129f6376b"
  }
}

variable "instance_type" {
  type = map(string)
  default = {
    "nano"    = "t2.nano"
    "micro"   = "t2.micro"
    "small"   = "t2.small"
    "medium"  = "t2.medium"
    "large"   = "t2.large"
    "xlarge"  = "t2.xlarge"
    "2xlarge" = "t2.2xlarge"
  }
}

variable "keypairs" {
  type = map(string)
  default = {
    "NAME" = "VALUE"
  }
}

variable "public_key" {
  default = "LOCATION/keypair.pub"
}

variable "private_key" {
  default = "LOCATION/keypair.pem"
}

variable "ansible_user" {
  type = map(string)
  default = {
    "ubuntu_18_04" = "ubuntu"
    "centos_7" = "centos"
  }
}
