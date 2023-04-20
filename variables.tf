variable "cluster_blueprint" {
  type    = string
  default = "ubuntu_22_04"
}

variable "master_instance_type" {
  type    = string
  default = "nano_2_0"
}

variable "worker_instance_type" {
  type    = string
  default = "micro_2_0"
}

variable "master_azs" {
  type    = string
  default = "us-east-2a"
}

variable "worker_azs" {
  type    = string
  default = "us-east-2b"
}

variable "numero_masters" {
  type    = number
  default = 1
}

variable "numero_workers" {
  type    = number
  default = 2
}

variable "cluster_name" {
  type    = string
  default = "AprendaAWS-k8s"
}

variable "instance_userdata" {
  type    = string
  default = "sudo apt update && sudo apt install unzip plocate -y && sudo /snap/amazon-ssm-agent/6312/amazon-ssm-agent -register -y -id 'alterar_com_o_seu' -code 'alterar_com_o_seu' -region 'alterar_com_a_sua' && sudo snap restart amazon-ssm-agent"
}

