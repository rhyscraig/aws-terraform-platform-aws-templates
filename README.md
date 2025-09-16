# AVM Platform Infrastructure

## Overview
This repository contains the **foundational AWS infrastructure** for AVM. It includes core networking, IAM, and shared services required to deploy accounts and workloads.  

---

## Contents
- **VPCs, Subnets, and Networking**  
  - Core VPC definitions, route tables, NAT gateways.
- **IAM Roles & Policies**  
  - Roles for inter-service communication.
- **Shared Services**  
  - Logging, monitoring, and centralized resources.

---

## Inputs
| Variable | Description | Example |
|----------|-------------|---------|
| `region` | AWS region to deploy core infra | `eu-west-1` |
| `vpc_cidr` | CIDR block for the VPC | `10.0.0.0/16` |
| `log_bucket_name` | Centralized logging bucket | `avm-central-logs` |

---

## Outputs
| Output | Description |
|--------|-------------|
| `vpc_id` | ID of the core VPC |
| `subnet_ids` | List of subnet IDs |
| `iam_role_arns` | List of IAM roles for AVM repos |

---

## Terraform AFT & Control Tower
- **Control Tower configuration** can live in this repo because this is the **foundational AWS infrastructure layer**.
- Define your **landing zone or guardrails via Terraform `aws_controltower_landing_zone` or `aws_controltower_control` resources** here.
- **AFT deployment**: define account factory pipelines to provision new accounts from this platform.

---

## Deployment Order
1. Ensure `avm-bootstrap` has been applied (for OIDC and backend).
2. Deploy foundational infrastructure before any accounts or guardrails.

---

## Notes
- This repo is foundational; other repos may depend on its outputs.
- No CodePipeline or CodeBuild required; GitHub Actions is used.
