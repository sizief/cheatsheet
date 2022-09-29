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

#### locals
define local varibles
```
locals {
  name = "ali"
}
```

#### variable
only used in modules as inputs.
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

#### import
`terraform import docker_container.web $(docker inspect --format="{{.ID}}" hashicorp-learn)`
Import infra from infra to tf.state
terraform show -no-color > docker.tf 
https://learn.hashicorp.com/tutorials/terraform/state-import?in=terraform/state

#### show
`terraform show`
`terraform show -no-color > docker.tf` move state to config file
show human readable state

### policies
add 
```## **allowed-terraform-version.sentinel**
import "tfplan"

main = rule {

tfplan.terraform_version matches "^(0\\.1(4|5)|1\\.0)\\.\\d+$"

}
```
and 
```sentinel.cl
policy "allowed-terraform-version" {

enforcement_level = "soft-mandatory"

}
```

### backends
Backend means two things:
- where the state stores
- where the operation runs (the host machine)


### commands

terraform fmt
terraform validate
terraform init
terraform plan
terraform apply
terraform show -> Reads and outputs a Terraform state or plan file in a human-readabl
terraform state list
terraform destroy -> opposite of apply

### Terraform Cloud
Two ways to use TF Cloud:
- use it as remote backend and run apply from CLI
- Add repo to TF cloud and triggers on changes and not allowing apply from the CLI

Also two ways to implement apply:
- auto apply
- manual apply
#### how to migrate
1. setup remote backedn stanza
2. run apply
3. remove local TF file


### Certificate
https://www.youtube.com/watch?v=V4waklkBC38