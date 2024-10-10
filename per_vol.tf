resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 30    # 30 GiB
  type              = "gp3"  # EBS volume type
}

resource "kubernetes_persistent_volume" "example_pv" {
  metadata {
    name = "example-pv"
  }
  spec {
    capacity = {
      storage = "30Gi" # Capacity of the PV
    }

    access_modes = ["ReadWriteOnce"]

    persistent_volume_source {
      aws_elastic_block_store {
        volume_id = aws_ebs_volume.example.id # Bind EBS volume ID
        fs_type   = "ext4"                    # Filesystem type
      }
    }

    persistent_volume_reclaim_policy = "Retain" # Reclaim policy
  }
}