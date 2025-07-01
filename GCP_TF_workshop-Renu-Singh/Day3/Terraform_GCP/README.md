# Day 3: Terraform for Basic Infrastructure Automation (GCP)


---

## Core Concept Questions

### 1. What is the difference between declarative IaC and imperative scripting?

- Declarative Infrastructure as Code (IaC) describes the desired state of infrastructure (e.g., "A VM should exist with this configuration").
- Imperative scripting defines the specific steps to achieve the desired state (e.g., "Run this command to create the VM").
- Terraform is a declarative tool. It figures out the actions needed to reach the desired state.



### 2. Why is Terraform state important and how can it become a security risk?

- Terraform state keeps track of existing infrastructure and how it maps to the configuration files.
- It is essential for understanding what resources exist and managing changes.
- The state file may contain sensitive data such as IP addresses, secrets, or credentials.
- If exposed (for example, accidentally pushed to version control), it can be a significant security risk.



### 3. In what scenarios should a team use Terraform over manual provisioning?

- When setting up infrastructure across multiple environments (e.g., development, staging, production)
- For repeatable and automated deployments
- When collaboration and tracking changes are important
- To reduce manual errors and standardize infrastructure setup across the organization

---

## Code Structure

| File               | Purpose                                                  |
|--------------------|----------------------------------------------------------|
| `main.tf`          | Terraform code to define and create the VM and bucket    |
| `variables.tf`     | Declares variables like project ID, region, zone, etc.   |
| `outputs.tf`       | Outputs VM IP address and bucket URL                     |
| `terraform.tfvars` | Contains actual values for the input variables           |


---

---

## Terraform Benefits

-  **Declarative**: Define *what* you want, not *how* to do it
-  **Repeatable**: Easily recreate infrastructure across environments
-  **Version-controlled**: Track changes over time like software code
-  **Collaboration**: Teams can work together using the same configuration
-  **Multi-cloud support**: Use one tool for AWS, GCP, Azure, etc.

---

