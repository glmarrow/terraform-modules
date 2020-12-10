credentials_file_path       = "<credentials_file_path>"
service_account             = "<service_account_email>"
project                     = "<project>"
name                        = "terraform"
region                      = "us-central1"
zone                        = "us-central1-c"
machine                     = "n1-standard-2"
# FortiGate Image name
# 6.4.2 payg is projects/fortigcp-project-001/global/images/fortinet-fgtondemand-642-20200810-001-w-license
# 6.4.2 byol is projects/fortigcp-project-001/global/images/fortinet-fgt-642-20200810-001-w-license
image                       = "projects/fortigcp-project-001/global/images/fortinet-fgtondemand-642-20200810-001-w-license"
bastionhost_image           = "windows-cloud/windows-2019"
bastionhost_machine         = "n1-standard-2"
admin_port                  = 8443
# VPCs
vpcs                        = ["public-vpc", "private-vpc"]
# Subnet
subnets                     = ["public-subnet", "private-subnet"]
subnet_cidrs                = ["172.14.0.0/24", "172.14.1.0/24"]
# Instance Template Variables
private_vpc_cidr            = "172.14.1.0"
private_vpc_gateway         = "172.14.1.1"
mapped_ip                   = "192.168.195.1"
# Managed Instance Group Variables
target_size                     = 2
autohealing_check_interval_sec  = 5
autohealing_timeout_sec         = 5
autohealing_healthy_threshold   = 2
autohealing_unhealthy_threshold = 10 # 50 seconds
autohealing_tcp_health_check    = 541
initial_delay_sec               = 500
# External Load Balancer
elb_check_interval_sec          = 3
elb_timeout_sec                 = 2
elb_unhealthy_threshold         = 3
elb_port                        = 8008
# Internal Load Balancer
int_check_interval_sec          = 3
int_timeout_sec                 = 2
int_port                        = 80
