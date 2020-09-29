access_key                  = ""
secret_key                  = ""
#
# Booleans to enable certain features
#
# Allow creation of Linux instances in east/west VPCs
#
enable_linux_instances                = true
use_fortigate_byol                    = true
#
# Variables likely to change
#
keypair                     = "mdw-key-oregon"
aws_region                  = "us-west-2"
customer_prefix             = "mdw"
environment                 = "dev"
fortigate_sg_name           = "fortigate"

availability_zone_1         = "us-west-2a"
availability_zone_2         = "us-west-2c"

#
# VPC CIDR's
#
vpc_cidr_security           = "10.0.0.0/16"
vpc_cidr_east               = "192.168.0.0/24"
vpc_cidr_west               = "192.168.1.0/24"
vpc_name_security           = "security"
vpc_name_east               = "east"
vpc_name_west               = "west"

#
# Subnet CIDR's
#
public_subnet_cidr1         = "10.0.1.0/24"
public_subnet_cidr2         = "10.0.10.0/24"
private_subnet_cidr_1       = "10.0.2.0/24"
private_subnet_cidr_2       = "10.0.20.0/24"
sync_subnet_cidr_1          = "10.0.4.0/24"
sync_subnet_cidr_2          = "10.0.40.0/24"
ha_subnet_cidr_1            = "10.0.5.0/24"
ha_subnet_cidr_2            = "10.0.50.0/24"

private1_subnet_tgw_cidr    = "10.0.6.0/24"
private2_subnet_tgw_cidr    = "10.0.60.0/24"

#
# Derived variables. IP address for Fortigate interfaces will be cidr for subnet + 10
#
public1_ip_address          = "10.0.1.10"
public1_description         = "public1-az1"

public2_ip_address          = "10.0.10.10"
public2_description         = "public2-az2"

private1_tgw_description     = "private-tgw-az1"
private2_tgw_description     = "private-tgw-az2"

private1_ip_address         = "10.0.2.10"
private1_description        = "private1-az1"

private2_ip_address         = "10.0.20.10"
private2_description        = "private2-az2"

sync_subnet_ip_address_1    = "10.0.4.10"
sync_description_1          = "sync-az1"

sync_subnet_ip_address_2    = "10.0.40.10"
sync_description_2          = "sync-az2"

ha_subnet_ip_address_1      = "10.0.5.10"
ha_description_1            = "hamgmt-az1"

ha_subnet_ip_address_2      = "10.0.50.10"
ha_description_2            = "hamgmt-az2"

#
# Fortigate Variables
#
cidr_for_access             = "0.0.0.0/0"
fortigate_instance_type     = "c5n.xlarge"
fortigate_instance_name_1   = "Fortigate One HA Pair"
fortigate_instance_name_2   = "Fortigate Two HA Pair"
acl                         = "private"
fortios_version             = "6.4.2"
fgt_byol_1_license          = "./licenses/fgt1-license.lic"
fgt_byol_2_license          = "./licenses/fgt2-license.lic"
fgt_ha_password             = "pocpassword727"
fgt_admin_password          = "Texas4me!"
fortigate_hostname_1        = "fgt-active"
fortigate_hostname_2        = "fgt-passive"

#
# Endpoints Variables
#
ec2_sg_name                 = "ec2"
linux_instance_name_east    = "East Linux Instance"
linux_instance_name_west    = "West Linux Instance"
linux_instance_type         = "t2.micro"


