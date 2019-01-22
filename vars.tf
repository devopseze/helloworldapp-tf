variable "AWS_REGION" {
  default = "us-east-1"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}
variable "ECS_AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-06bec82fb46167b4f"
    us-west-2 = "ami-0b2cc421c0d3015b4"
    eu-west-1 = "ami-03a86880c9c6880ac"
  }
}
# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
