# avm-platform-infra

## Purpose
Defines the **foundational AWS infrastructure for the AVM platform itself**.  

This repo provisions:
- CI/CD support infrastructure (e.g., CodeBuild/CodePipeline if not using GitHub Actions exclusively)
- Shared networking across the AVM platform
- Cross-account IAM roles for automation
- Monitoring and observability for AVM pipelines

## Contents
- `cicd/` → Optional AWS-native CI/CD components
- `networking/` → Platform-level networking
- `iam/` → Cross-account roles and trust relationships
- `main.tf` → Entry point

## Pipelines
✅ **Requires a GitHub Actions pipeline.**  
Reason: Platform infra must evolve as the AVM itself scales.

## Best Practice Notes
- Supports the other repos rather than configuring accounts directly.
- Does not hold Terraform AFT.
- Does not hold Control Tower config.
