# account_budget variables

variable "account_name" {
  type = "string"
  description = "value of the account name"
  default = "My Account"
}

variable "account_budget_limit" {
  type = "number"
  description = "value of the account budget limit"
  default = 100
}

variable "account_budget_limit_unit" {
  type = "string"
  description = "value of the account budget limit unit"
  default = "USD"
}

variable "account_budget_start" {
  type = "string"
  description = "the start date of the account budget"
  default = "2023-01-01_00:00"
}

variable "account_budget_end" {
  type = "string"
  description = "the end date of the account budget"
  default = ""
}

variable "account_budget_include_support" {
  type = "bool"
  description = "include support in the account budget"
  default = false
}
  
variable "account_budget_include_other" {
  type = "bool"
  description = "include other in the account budget"
  default = false
}

variable "account_budget_include_tax" {
  type = "bool"
  description = "include tax in the account budget"
  default = true
}

variable "account_budget_comparison_operator" {
  type = "string"
  description = "the comparison operator for the account budget"
  default = "GREATER_THAN"
}

variable "account_budget_threshold" {
  type = "number"
  description = "the threshold for the account budget"
  default = 100
}

variable "account_budget_threshold_type" {
  type = "string"
  description = "the threshold type for the account budget"
  default = "PERCENTAGE"
}
  
variable "account_budget_notification_type" {
  type = "string"
  description = "the notification type for the account budget"
  default = "ACTUAL"
}

variable "account_budget_subscriber_email_addresses" {
  type = "string"
  description = "the subscriber email addresses for the account budget"
  default = "pda.ambrosio@gmail.com"
}

# service_budget variables

variable "service_budget_limit" {
  type = "number"
  description = "value of the service budget limit"
  default = 100
}

variable "service_budget_limit_unit" {
  type = "string"
  description = "value of the service budget limit unit"
  default = "USD"
}

variable "service_budget_start" {
  type = "string"
  description = "the start date of the service budget"
  default = "2023-01-01_00:00"
}

variable "service_budget_end" {
  type = "string"
  description = "the end date of the service budget"
  default = ""
}

variable "service_budget_include_support" {
  type = "bool"
  description = "include support for the service budget"
  default = false
}

variable "service_budget_include_other" {
  type = "bool"
  description = "include other for the service budget"
  default = false
}

variable "service_budget_include_tax" {
  type = "bool"
  description = "include tax for the service budget"
  default = true
}

variable "service_budget_comparison_operator" {
  type = "string"
  description = "the comparison operator for the service budget"
  default = "GREATER_THAN"
}

variable "service_budget_threshold" {
  type = "number"
  description = "the threshold for the service budget"
  default = 100
}

variable "service_budget_threshold_type" {
  type = "string"
  description = "the threshold type for the service budget"
  default = "PERCENTAGE"
}

variable "service_budget_notification_type" {
  type = "string"
  description = "the notification type for the service budget"
  default = "ACTUAL"
}

variable "service_budget_subscriber_email_addresses" {
  type = "string"
  description = "the subscriber email addresses for the service budget"
  default = "pda.ambrosio@gmail.com"
}
