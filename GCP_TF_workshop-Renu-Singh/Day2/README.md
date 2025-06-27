# Day 2: IAM & Service Accounts in GCP


## Core Concept Questions

### Why is it dangerous to assign the Editor role to all users in a production environment?

Assigning the Editor role to all users in a production environment is risky because the Editor role includes broad permissions such as creating, modifying, and deleting resources across the project. This level of access can lead to unintended consequences like accidental resource deletion, security misconfigurations, or changes that affect system stability.

In a production environment, where stability and security are critical, giving every user the ability to make changes increases the risk of errors and potential service outages. It's a best practice to give users only the permissions they need for their specific tasks (principle of least privilege), and to reserve powerful roles like Editor for trusted administrators only.

### How do service accounts differ from user accounts in managing backend services?

Service accounts are used by applications, virtual machines, or other automated services to interact with Google Cloud resources. They are not tied to any individual user, and they are intended for programmatic access rather than human interaction.

In contrast, user accounts represent real individuals who log in to the GCP Console or use the command line. These accounts typically go through authentication mechanisms like passwords and two-factor authentication.

Key differences:

   -  Service accounts are used by systems, while user accounts are used by people.

   - Service accounts are authenticated using keys or automatically by GCP services, not passwords.

   -  Service accounts are helpful for automation and secure backend communication between services.

### What practices help secure IAM in a multi-project GCP setup?

In a multi-project setup, IAM can become complex, and it's important to apply security best practices to maintain control and reduce risk. Some of the recommended practices include:

   - Use the principle of least privilege: Grant users or service accounts only the permissions they need.

   - Group resources by function or environment (e.g., dev, test, prod) and manage access accordingly.

   - Use custom roles when predefined roles are too broad, to fine-tune permissions.

   - Implement organization policies to enforce constraints globally (e.g., restrict service account key creation).

   - Avoid using primitive roles (Owner, Editor, Viewer) in production; prefer predefined or custom roles.

   - Enable audit logging to track who accessed what and when.

   - Regularly review IAM policies and roles to identify and remove unused or excessive permissions.

   - Separate duties and responsibilities across users, teams, or environments to minimize risk of misuse.

These practices help ensure that access is managed securely and consistently across all projects.

---
## IAM Policy Explanation
In this exercise, the **Viewer** role was assigned to a test user. This role provides read-only access to GCP resources, allowing the user to view project data without making any changes. The decision to use the Viewer role was based on the principle of least privilege, ensuring that the user has only the access needed in this case, visibility without edit or delete permissions.

This helps keep the environment secure by reducing the risk of accidental or unauthorized actions, especially in shared or production-like setups.

---
## Description of Roles Used and Why

To assign permissions, I went to IAM → Grant Access, selected the project, and added a new principal. This principal can be either a Google account (Gmail ID) or a GCP-managed identity. After adding the principal, I selected a role by going to the "Basic" category and chose the Viewer role.

The Viewer role was selected because it allows the user to view project resources without making any changes. This ensures that the user has visibility but cannot modify, delete, or manage permissions, which helps keep the project secure. This choice reflects the principle of least privilege giving only the minimum access needed.


These roles were selected to minimize access while still allowing necessary operations. No broad roles such as Editor or Owner were used.

---

