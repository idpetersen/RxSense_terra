module "ec2_instance" {
  # Module source:
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  # Giving the EC2 instance a name
  name = "AWD proficiency excersize"
  # Disk image for mounting (given by AWS in the EC2 dashboard)
  ami                    = "ami-0cff7528ff583bf9a"
  # Instance size
  instance_type          = "t2.micro"
  # SSH keyname to be able to connect to the server remotely. A .pem file was provided and can be sshed into with that private key
  key_name               = "idpetersen_rxsense_demo"
  monitoring             = true
  # Security group uuid of the security group created in the EC2 dashboard
  vpc_security_group_ids = ["sg-068c53ddf276ca1ad"]
  # Available subnet uuid found in the VPC dashboard
  subnet_id              = "subnet-0390457d5cabc55de"
  # Tags associated with this instance
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}