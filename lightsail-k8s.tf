resource "aws_lightsail_instance" "k8s_masters" {
  count             = var.numero_masters
  name              = join("-", [var.cluster_name, "-master-", "${count.index}"])
  ip_address_type   = "ipv4"
  availability_zone = var.master_azs
  blueprint_id      = var.cluster_blueprint
  bundle_id         = var.master_instance_type
  user_data         = var.instance_userdata
  tags = {
    node_type = "master"
  }
}

resource "aws_lightsail_instance" "k8s_workers" {
  count             = var.numero_workers
  name              = join("-", [var.cluster_name, "-worker-", "${count.index}"])
  ip_address_type   = "ipv4"
  availability_zone = var.worker_azs
  blueprint_id      = var.cluster_blueprint
  bundle_id         = var.worker_instance_type
  user_data         = var.instance_userdata
  tags = {
    node_type = "worker"
  }
}
