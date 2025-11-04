# Day-1: AWS Multi Account Landing Zone & IAM Architecture

## 🎯 Objective
Understand how enterprises structure AWS environments securely using:
- AWS Organizations
- Organizational Units (OU)
- Service Control Policies (SCP)
- IAM roles & federation
- SSO / Identity Center

## 🏢 Multi Account Structure (Enterprise)

Root Organization
├── Security OU
│   ├── Security Audit Account
│   └── Logging Account (CloudTrail, Config, GuardDuty)
├── Infrastructure OU
│   ├── Shared Services (DNS, AD Connector, Transit Gateway)
│   └── Network Account
├── Workloads OU
│   ├── Dev
│   ├── QA / UAT
│   └── Prod
└── Sandbox OU

## 🔐 Key Security Rules
- Never deploy workloads in root account
- Centralized logging + GuardDuty + SecurityHub
- MFA enforced
- SCP restricts:
  - No public S3 buckets
  - No deleting CloudTrail logs
  - Only approved regions
  - No root account access

## ✅ Architect Responsibility
You design:
- Account strategy
- IAM roles for least privilege
- Federation (SSO, Okta, AD, Google Workspace)
- SCP policies
- KMS key policy governance
- Onboarding new workloads/accounts

This is real enterprise cloud governance.
