# account_budget variables

variable "account_name" {
  type = "string"
  default = "My Account"
}

variable "account_budget_limit" {
  type = "number"
  default = 100
}

variable "account_budget_limit_unit" {
  type = "string"
  default = "USD"
}

variable "account_budget_start" {
  type = "string"
  default = "2023-01-01_00:00"
}

variable "account_budget_end" {
  type = "string"
  default = ""
}

variable "account_budget_include_support" {
  type = "bool"
  default = false
}
  
variable "account_budget_include_other" {
  type = "bool"
  default = false
}

variable "account_budget_include_tax" {
  type = "bool"
  default = true
}

variable "account_budget_comparison_operator" {
  type = "string"
  default = "GREATER_THAN"
}

variable "account_budget_threshold" {
  type = "number"
  default = 100
}

variable "account_budget_threshold_type" {
  type = "string"
  default = "PERCENTAGE"
}
  
variable "account_budget_notification_type" {
  type = "string"
  default = "ACTUAL"
}

variable "account_budget_subscriber_email_addresses" {
  type = "string"
  default = "pda.ambrosio@gmail.com"
}

# service_budget variables

variable "service_budget_limit" {
  type = "number"
  default = 100
}

variable "service_budget_limit_unit" {
  type = "string"
  default = "USD"
}

variable "service_budget_start" {
  type = "string"
  default = "2023-01-01_00:00"
}

variable "service_budget_end" {
  type = "string"
  default = ""
}

variable "service_budget_include_support" {
  type = "bool"
  default = false
}

variable "service_budget_include_other" {
  type = "bool"
  default = false
}

variable "service_budget_comparison_operator" {
  type = "string"
  default = "GREATER_THAN"
}

variable "service_budget_threshold" {
  type = "number"
  default = 100
}

variable "service_budget_threshold_type" {
  type = "string"
  default = "PERCENTAGE"
}

variable "service_budget_notification_type" {
  type = "string"
  default = "ACTUAL"
}

variable "service_budget_subscriber_email_addresses" {
  type = "string"
  default = "pda.ambrosio@gmail.com"
}
