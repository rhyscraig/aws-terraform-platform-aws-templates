# 📄 Project Templates (aws-templates)

**Classification:** Public (Internal)

This repository serves as the **Reference Architecture** for new infrastructure projects. It is designed to be copied or scaffolded by `tfctl new-repo`.

## 🚀 "Born Secure" Defaults

Projects created from this template include:
1.  **Dynamic Backend:** `.tfctl.yaml` pre-configured for S3 state isolation.
2.  **CI/CD Ready:** `.github/workflows/deploy.yaml` pointing to `aws-workflows`.
3.  **Pre-Commit:** `.pre-commit-config.yaml` with security scanners.
4.  **Dependency Bot:** `dependabot.yaml` configured for Terraform & Actions.

## 🛠️ How to Start a New Project

```bash
# 1. Create directory
mkdir my-new-app && cd my-new-app

# 2. Initialize (using tfctl)
tfctl setup

# 3. Configure
vim .tfctl.yaml  # Set your account IDs