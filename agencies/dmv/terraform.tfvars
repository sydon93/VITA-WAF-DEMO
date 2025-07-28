web_acl_name = "dmv-waf"
metric_name  = "dmv-waf-metrics"
alb_arn      = "arn:aws:elasticloadbalancing:us-east-1:782557964167:loadbalancer/app/dmv-waf-test-alb/1a1ecdbfc76887c3"

# AWS MANAGED RULE GROUPS
managed_rules = [
  {
    name        = "SQLiRuleSet"
    priority    = 1
    metric_name = "SQLiRule"
    rule_group  = "AWSManagedRulesSQLiRuleSet"
  },
  {
    name        = "CommonRuleSet"
    priority    = 2
    metric_name = "CommonRule"
    rule_group  = "AWSManagedRulesCommonRuleSet"
  },
  {
    name        = "BadInputsRuleSet"
    priority    = 3
    metric_name = "BadInputsRule"
    rule_group  = "AWSManagedRulesKnownBadInputsRuleSet"
  },
  {
    name        = "AdminProtection"
    priority    = 4
    metric_name = "AdminProtection"
    rule_group  = "AWSManagedRulesAdminProtectionRuleSet"
  },
  {
    name        = "AmazonIPReputation"
    priority    = 5
    metric_name = "AmazonIPReputation"
    rule_group  = "AWSManagedRulesAmazonIpReputationList"
  },
  {
    name        = "AnonymousIPList"
    priority    = 6
    metric_name = "AnonymousIPList"
    rule_group  = "AWSManagedRulesAnonymousIpList"
  },
  {
    name        = "BotControl"
    priority    = 7
    metric_name = "BotControl"
    rule_group  = "AWSManagedRulesBotControlRuleSet"
  },
  # {
  #   name        = "XSSRuleSet"
  #   priority    = 8
  #   metric_name = "XSSRule"
  #   rule_group  = "AWSManagedRulesXSSRuleSet"
  # }
]

# CUSTOM RULES - IP Blocking
blocked_ips = [
  "71.70.238.28/32",   # CLI IP
  "104.129.206.124/32" # Browser IP
]

# CUSTOM RULES - Country Blocking
geo_match_countries = [
  "RU", # Russia
  "CN"  # China
]
