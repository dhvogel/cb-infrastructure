variable "ami_id" {
  description = "AMI ID"
  default     = "ami-79f66d6f"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "connection_user" {
  description = "Name of user used in instance connection"
  default     = "ubuntu"
}

variable "connection_private_key" {
  description = "Relative path of private key used to ssh into instance"
  default     = "~/.ssh/cb-karl.pem"
}

variable "instance_type" {
  description = "Type of AWS Instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default     = "cb-karl"
}

variable "sg_description" {
  description = "Description of security group"
  default     = "CB-Karl secruity group"
}

variable "sg_name" {
  description = "Name of security group"
  default     = "cb_karl_sg"
}

variable "tag_name" {
  description = "Name tag on instance"
  default     = "cb-karl"
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile"
  default = "arn:aws:iam::306064677421:instance-profile/s3AdminAccess"
}
