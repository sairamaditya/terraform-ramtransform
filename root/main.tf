
module "my_ec2" {
  source        = "../ec2-instance"
  ami           = "ami-0411ab208c7da4382" # Replace with a valid AMI ID
  instance_type = "t3.micro"
}
output "instance_id" {
  value = module.my_ec2.instance_id
}