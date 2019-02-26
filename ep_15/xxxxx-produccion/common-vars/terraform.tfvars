project_name = "vcc-api"
environment = "production"

vpc_cidr_block = "192.168.0.0/16"

region = "eu-west-1"
vpc_azs = ["eu-west-1a","eu-west-1b","eu-west-1c"]

vpc_public_subnet_cidrs = [
	"192.168.10.0/24",
	"192.168.20.0/24",
	"192.168.30.0/24",
]

vpc_private_subnet_cidrs = [
	"192.168.11.0/24",
	"192.168.21.0/24",
	"192.168.31.0/24",
]


