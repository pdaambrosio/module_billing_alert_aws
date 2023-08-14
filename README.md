# module_billing_alert_aws

- Terraform module to create a Billing Alerts on AWS
- Example of use see this repository: [atlantis_terraform](https://github.com/pdaambrosio/atlantis_terraform)

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 account_budget_comparison_operator  = "GREATER_THAN"
	 account_budget_end  = ""
	 account_budget_include_other  = false
	 account_budget_include_support  = false
	 account_budget_include_tax  = true
	 account_budget_limit  = 100
	 account_budget_limit_unit  = "USD"
	 account_budget_notification_type  = "ACTUAL"
	 account_budget_start  = "2023-01-01_00:00"
	 account_budget_subscriber_email_addresses  = "pda.ambrosio@gmail.com"
	 account_budget_threshold  = 100
	 account_budget_threshold_type  = "PERCENTAGE"
	 account_name  = "My Account"
	 service_budget_comparison_operator  = "GREATER_THAN"
	 service_budget_end  = ""
	 service_budget_include_other  = false
	 service_budget_include_support  = false
	 service_budget_include_tax  = true
	 service_budget_limit  = 100
	 service_budget_limit_unit  = "USD"
	 service_budget_notification_type  = "ACTUAL"
	 service_budget_start  = "2023-01-01_00:00"
	 service_budget_subscriber_email_addresses  = "pda.ambrosio@gmail.com"
	 service_budget_threshold  = 100
	 service_budget_threshold_type  = "PERCENTAGE"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_budgets_budget.account_budget_billing_alert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |
| [aws_budgets_budget.service_budget_billing_alert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |
| [aws_sns_topic.topic_billing_alert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_policy.policy_billing_alert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy) | resource |
| [aws_iam_policy_document.policy_billing_alert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_budget_comparison_operator"></a> [account\_budget\_comparison\_operator](#input\_account\_budget\_comparison\_operator) | the comparison operator for the account budget | `string` | `"GREATER_THAN"` | no |
| <a name="input_account_budget_end"></a> [account\_budget\_end](#input\_account\_budget\_end) | the end date of the account budget | `string` | `""` | no |
| <a name="input_account_budget_include_other"></a> [account\_budget\_include\_other](#input\_account\_budget\_include\_other) | include other in the account budget | `bool` | `false` | no |
| <a name="input_account_budget_include_support"></a> [account\_budget\_include\_support](#input\_account\_budget\_include\_support) | include support in the account budget | `bool` | `false` | no |
| <a name="input_account_budget_include_tax"></a> [account\_budget\_include\_tax](#input\_account\_budget\_include\_tax) | include tax in the account budget | `bool` | `true` | no |
| <a name="input_account_budget_limit"></a> [account\_budget\_limit](#input\_account\_budget\_limit) | value of the account budget limit | `number` | `100` | no |
| <a name="input_account_budget_limit_unit"></a> [account\_budget\_limit\_unit](#input\_account\_budget\_limit\_unit) | value of the account budget limit unit | `string` | `"USD"` | no |
| <a name="input_account_budget_notification_type"></a> [account\_budget\_notification\_type](#input\_account\_budget\_notification\_type) | the notification type for the account budget | `string` | `"ACTUAL"` | no |
| <a name="input_account_budget_start"></a> [account\_budget\_start](#input\_account\_budget\_start) | the start date of the account budget | `string` | `"2023-01-01_00:00"` | no |
| <a name="input_account_budget_subscriber_email_addresses"></a> [account\_budget\_subscriber\_email\_addresses](#input\_account\_budget\_subscriber\_email\_addresses) | the subscriber email addresses for the account budget | `string` | `"pda.ambrosio@gmail.com"` | no |
| <a name="input_account_budget_threshold"></a> [account\_budget\_threshold](#input\_account\_budget\_threshold) | the threshold for the account budget | `number` | `100` | no |
| <a name="input_account_budget_threshold_type"></a> [account\_budget\_threshold\_type](#input\_account\_budget\_threshold\_type) | the threshold type for the account budget | `string` | `"PERCENTAGE"` | no |
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | value of the account name | `string` | `"My Account"` | no |
| <a name="input_service_budget_comparison_operator"></a> [service\_budget\_comparison\_operator](#input\_service\_budget\_comparison\_operator) | the comparison operator for the service budget | `string` | `"GREATER_THAN"` | no |
| <a name="input_service_budget_end"></a> [service\_budget\_end](#input\_service\_budget\_end) | the end date of the service budget | `string` | `""` | no |
| <a name="input_service_budget_include_other"></a> [service\_budget\_include\_other](#input\_service\_budget\_include\_other) | include other for the service budget | `bool` | `false` | no |
| <a name="input_service_budget_include_support"></a> [service\_budget\_include\_support](#input\_service\_budget\_include\_support) | include support for the service budget | `bool` | `false` | no |
| <a name="input_service_budget_include_tax"></a> [service\_budget\_include\_tax](#input\_service\_budget\_include\_tax) | include tax for the service budget | `bool` | `true` | no |
| <a name="input_service_budget_limit"></a> [service\_budget\_limit](#input\_service\_budget\_limit) | value of the service budget limit | `number` | `100` | no |
| <a name="input_service_budget_limit_unit"></a> [service\_budget\_limit\_unit](#input\_service\_budget\_limit\_unit) | value of the service budget limit unit | `string` | `"USD"` | no |
| <a name="input_service_budget_notification_type"></a> [service\_budget\_notification\_type](#input\_service\_budget\_notification\_type) | the notification type for the service budget | `string` | `"ACTUAL"` | no |
| <a name="input_service_budget_start"></a> [service\_budget\_start](#input\_service\_budget\_start) | the start date of the service budget | `string` | `"2023-01-01_00:00"` | no |
| <a name="input_service_budget_subscriber_email_addresses"></a> [service\_budget\_subscriber\_email\_addresses](#input\_service\_budget\_subscriber\_email\_addresses) | the subscriber email addresses for the service budget | `string` | `"pda.ambrosio@gmail.com"` | no |
| <a name="input_service_budget_threshold"></a> [service\_budget\_threshold](#input\_service\_budget\_threshold) | the threshold for the service budget | `number` | `100` | no |
| <a name="input_service_budget_threshold_type"></a> [service\_budget\_threshold\_type](#input\_service\_budget\_threshold\_type) | the threshold type for the service budget | `string` | `"PERCENTAGE"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_budgets_budget_account_budget_billing_alert_id"></a> [budgets\_budget\_account\_budget\_billing\_alert\_id](#output\_budgets\_budget\_account\_budget\_billing\_alert\_id) | n/a |
| <a name="output_budgets_budget_service_budget_billing_alert_id"></a> [budgets\_budget\_service\_budget\_billing\_alert\_id](#output\_budgets\_budget\_service\_budget\_billing\_alert\_id) | n/a |
| <a name="output_sns_topic_arn"></a> [sns\_topic\_arn](#output\_sns\_topic\_arn) | n/a |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->
