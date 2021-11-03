To document and run infra as code.

One main.tf file should exists. All .tf files would merge into one file.

### Template
Several providers can be defined including AWS or Docker or GCP and etc
```hcl
terraform {  
  required_providers {    
    aws = {      
	  source  = "hashicorp/aws"      
	  version = "~> 3.27"    
	 }  
   }
  required_version = ">= 0.14.9"
 }
```

#### Resource
`Resource 'type' 'name' {
}`

#### variable
```hcl
variable "instance_name" {  
  description = "Value of the Name tag for the EC2 instance"  
  type        = string  
  default     = "ExampleAppServerInstance"
}
```
`name = var.instance_name`
or
```shell-session
terraform apply -var "instance_name=YetAnotherName"
```
or without default value and it will ask for the value of this on the apply step.

#### output
```hcl
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}
```
terraform output

### commands

terraform fmt
terraform validate
terraform init
terraform plan
terraform apply
terraform show -> Reads and outputs a Terraform state or plan file in a human-readabl
terraform state list
terraform destroy -> opposite of apply