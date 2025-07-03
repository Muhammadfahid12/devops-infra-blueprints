variable "instances" {
  description = "List of EC2 instances to create"
  type = map(object({
    instance_type = string
    subnet_id     = string
    ami           = string
    vpc_id        = string
  }))
}
