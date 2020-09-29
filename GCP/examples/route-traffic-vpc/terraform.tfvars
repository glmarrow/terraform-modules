credentials_file_path   = "<CREDENTIALS>"
project                 = "<GCP_PROJECT>"
region                  = "us-central1"
zone                    = "us-central1-c"
machine                 = "n1-standard-4"
image                   = "<IMAGE>"
license_file            = "<LICENSE_FILE>"
ubuntu_image            = "projects/ubuntu-os-cloud/global/images/ubuntu-1604-xenial-v20200702"
# VPCs
vpcs                    = ["public-vpc", "private-vpc"]
# subnet module
subnets                 = ["public-subnet", "private-subnet"]
subnet_cidrs            = ["172.19.0.0/24", "172.19.1.0/24"]
