# Day 2: IAM & Service Accounts in GCP


## Core Concept Questions

### Why is it dangerous to assign the Editor role to all users in a production environment?

Assigning the Editor role to all users in a production environment gives them broad permissions across all services. This includes the ability to create, modify, and delete resources, which can lead to accidental misconfigurations, security vulnerabilities, or data loss. It also increases the risk surface for insider threats or unintentional changes. A better practice is to assign only the necessary roles based on job responsibilities.

### How do service accounts differ from user accounts in managing backend services?

Service accounts are intended for use by applications, virtual machines, or other automated services rather than by human users. They are used to authenticate and authorize backend systems in a secure and managed way. Unlike user accounts, service accounts do not require passwords or two-factor authentication and are typically granted scoped, task-specific permissions. They help enforce better access control in automated environments.

### What practices help secure IAM in a multi-project GCP setup?

In a multi-project setup, security and control can be improved by:

- Assigning roles with the principle of least privilege
- Using custom roles when predefined roles are too broad
- Restricting service accounts to specific scopes
- Separating access by environment (dev, staging, production)
- Using IAM Conditions and organization policies
- Implementing audit logs and regularly reviewing permissions
- Avoiding shared service accounts or credentials

---

## IAM Policy Explanation

A custom IAM role named `ComputeInstanceViewer` was created. It includes only the permissions required to perform basic Compute Engine operations, such as starting, stopping, listing, and viewing instance details. This role was assigned to a test user to avoid granting excessive permissions like those included in the Editor role.

This approach follows the principle of least privilege by allowing the user to perform only the specific actions needed, reducing the risk of accidental or unauthorized changes.

---

## Description of Roles Used and Why

- **Test User (`test-user@example.com`)**: Assigned a custom role `ComputeInstanceViewer` with only the permissions necessary to view and manage Compute Engine VM instances.
- **Service Account (`vm-access-sa`)**:
  - Granted the `Logs Writer` role so the VM can write logs to Cloud Logging.
  - Granted the `Storage Object Viewer` role so the VM can read objects from a Cloud Storage bucket.

These roles were selected to minimize access while still allowing necessary operations. No broad roles such as Editor or Owner were used.

---

