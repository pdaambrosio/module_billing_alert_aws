output "sns_topic_arn" {
    value = aws_sns_topic.topic_billing_alert.arn 
}

output "budgets_budget_account_budget_billing_alert_id" {
    value = aws_budgets_budget.account_budget_billing_alert.id 
}

output "budgets_budget_service_budget_billing_alert_id" {
    value = aws_budgets_budget.service_budget_billing_alert.id 
}
