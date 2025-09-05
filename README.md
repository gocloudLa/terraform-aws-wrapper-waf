# Standard Platform - Terraform Module 🚀🚀
<p align="right"><a href="https://partners.amazonaws.com/partners/0018a00001hHve4AAC/GoCloud"><img src="https://img.shields.io/badge/AWS%20Partner-Advanced-orange?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS Partner"/></a><a href="LICENSE"><img src="https://img.shields.io/badge/License-Apache%202.0-green?style=for-the-badge&logo=apache&logoColor=white" alt="LICENSE"/></a></p>

Welcome to the Standard Platform — a suite of reusable and production-ready Terraform modules purpose-built for AWS environments.
Each module encapsulates best practices, security configurations, and sensible defaults to simplify and standardize infrastructure provisioning across projects.

## 📦 Module: Terraform WAF Module
<p align="right"><a href="https://github.com/gocloudLa/terraform-aws-wrapper-waf/releases/latest"><img src="https://img.shields.io/github/v/release/gocloudLa/terraform-aws-wrapper-waf.svg?style=for-the-badge" alt="Latest Release"/></a><a href=""><img src="https://img.shields.io/github/last-commit/gocloudLa/terraform-aws-wrapper-waf.svg?style=for-the-badge" alt="Last Commit"/></a><a href="https://registry.terraform.io/modules/gocloudLa/wrapper-waf/aws"><img src="https://img.shields.io/badge/Terraform-Registry-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform Registry"/></a></p>
The Terraform wrapper for WAF simplifies the configuration of the Web Application Firewall in the AWS cloud. This wrapper functions as a predefined template, facilitating the creation and management of WAF by handling all the technical details.

### ✨ Features




## 🚀 Quick Start
```hcl
waf_parameters = {
        "exSimple" = {
            logging_enable = false
            rules = [
              {
                name                = "AWSManagedRulesCommonRuleSet-rule-1"
                priority            = "10"
                override_action     = "none"
                visibility_config   = {
                    metric_name     = "AWSManagedRulesCommonRuleSet-metric"
                }
                managed_rule_group_statement = {
                  name              = "AWSManagedRulesCommonRuleSet" //WCU 700
                  vendor_name       = "AWS"
                }
              }
            ]
        }
    }
```


## 🔧 Additional Features Usage



## 📑 Inputs
| Name                   | Description                                          | Type     | Default                                                    | Required |
| ---------------------- | ---------------------------------------------------- | -------- | ---------------------------------------------------------- | -------- |
| scope                  | Set the scope of a resource (REGIONAL or CLOUDFRONT) | `string` | `REGIONAL`                                                 | no       |
| enabled                | Whether the WAF WebACL is enabled                    | `bool`   | `true`                                                     | no       |
| create_alb_association | Create association to ALB                            | `bool`   | `false`                                                    | no       |
| alb_arn                | Specify the ALB ARN for association                  | `string` | `""`                                                       | no       |
| alb_arn_list           | List of ALB ARNs for association                     | `list`   | `[]`                                                       | no       |
| allow_default_action   | Whether to allow requests by default                 | `bool`   | `true`                                                     | no       |
| visibility_config      | Configuration for CloudWatch metrics and sampling    | `map`    | ```{ metric_name = "${local.common_name}-${each.key}" }``` | no       |
| rules                  | Define the rules for the WAF WebACL                  | `list`   | `[{ name = "disabled" }]`                                  | no       |
| logging_enable         | Enable WAF logging to CloudWatch                     | `bool`   | `false`                                                    | no       |
| waf_logging_filter     | Apply a log filter to WAF logs                       | `map`    | `local.logging_filter_default`                             | no       |
| logging_retention      | CloudWatch log group retention in days               | `number` | `7`                                                        | no       |







## ⚠️ Important Notes
- **⚠️ Scope Configuration:** Use `REGIONAL` for ALB associations and `CLOUDFRONT` for CloudFront distributions



---

## 🤝 Contributing
We welcome contributions! Please see our contributing guidelines for more details.

## 🆘 Support
- 📧 **Email**: info@gocloud.la

## 🧑‍💻 About
We are focused on Cloud Engineering, DevOps, and Infrastructure as Code.
We specialize in helping companies design, implement, and operate secure and scalable cloud-native platforms.
- 🌎 [www.gocloud.la](https://www.gocloud.la)
- ☁️ AWS Advanced Partner (Terraform, DevOps, GenAI)
- 📫 Contact: info@gocloud.la

## 📄 License
This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details. 