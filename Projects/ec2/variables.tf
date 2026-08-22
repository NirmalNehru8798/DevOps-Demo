  variable "name"   { }
  variable "instance_type" { }
  variable "key_name"      { }
  variable "monitoring"    { 
    default = "false"
   }
  variable "subnet_id"     {
    default = "subnet-018711e0e83c713bb"
   }
  variable "env"   { }
  
  variable "vpc_id" {
    default = "vpc-0790402dc5637be6e"
  }