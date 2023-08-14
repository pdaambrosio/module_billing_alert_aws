resource "aws_sns_topic" "topic_billing_alert" {
  name = "topic_billing_alert"
}

resource "aws_sns_topic_policy" "policy_billing_alert" {
  arn    = aws_sns_topic.topic_billing_alert.arn
  policy = data.aws_iam_policy_document.policy_billing_alert.json
}

data "aws_iam_policy_document" "policy_billing_alert" {
  statement {
    sid    = "AWSBudgetsSNSPublishingPermissions"
    effect = "Allow"
    actions = [
      "SNS:Receive",
      "SNS:Publish"
    ]

    principals {
      type        = "Service"
      identifiers = ["budgets.amazonaws.com"]
    }

    resources = [
      aws_sns_topic.topic_billing_alert.arn
    ]
  }
}

resource "aws_budgets_budget" "account_budget_billing_alert" {
  name         = "${var.account_name} Account Monthly Budget"
  budget_type  = "COST"
  limit_amount = var.account_budget_limit
  limit_unit   = var.account_budget_limit_unit
  time_period {
    start = var.account_budget_start
    end   = var.account_budget_end == "" ? null : var.account_budget_end
  }

  cost_types {
    include_support = var.account_budget_include_support
    include_other   = var.account_budget_include_other
    include_tax     = var.account_budget_include_tax
  }

  notification {
    comparison_operator = var.account_budget_comparison_operator
    threshold           = var.account_budget_threshold
    threshold_type      = var.account_budget_threshold_type
    notification_type   = var.account_budget_notification_type

    subscriber_email_addresses = [
      var.account_budget_subscriber_email_addresses
    ]

    subscriber_sns_topic_arns = [
      aws_sns_topic.topic_billing_alert.arn
    ]
  }

  depends_on = [aws_sns_topic.topic_billing_alert]
}

resource "aws_budgets_budget" "service_budget_billing_alert" {
  for_each = var.aws_services

  name         = "${var.account_name} ${each.value} Monthly Budget"
  budget_type  = "COST"
  limit_amount = var.service_budget_limit
  limit_unit   = var.service_budget_limit_unit

  time_period {
    start = var.service_budget_start
    end   = var.service_budget_end == "" ? null : var.service_budget_end
  }

  cost_types {
    include_support = var.service_budget_include_support
    include_other   = var.service_budget_include_other
    include_tax     = var.service_budget_include_tax
  }

  cost_filter {
    Service = lookup(local.aws_services, each.key)
  }

  notification {
    comparison_operator = var.service_budget_comparison_operator
    threshold           = var.service_budget_threshold
    threshold_type      = var.service_budget_threshold_type
    notification_type   = var.service_budget_notification_type

    subscriber_email_addresses = [
      var.service_budget_subscriber_email_addresses
    ]

    subscriber_sns_topic_arns = [
      aws_sns_topic.topic_billing_alert.arn
    ]
  }

  depends_on = [aws_sns_topic.topic_billing_alert]
}
