# Advanced Terraform (Modules, Remote State, Workspaces)

## Core Concept Questions

### 1. What are the advantages of using Terraform modules in a microservice-oriented product team?
Using modules in Terraform helps keep the infrastructure code clean and organized. Instead of writing the same configuration again and again, we can create modules once and reuse them across multiple services. This saves time, reduces errors, and ensures consistency in how resources are created. Teams working on different microservices can focus on their own modules without affecting others.  

---

### 2. How do workspaces simplify multi-environment deployments?
Workspaces make it easy to manage multiple environments like dev, staging, and production with the same Terraform code. Each workspace has its own state file, so resources in one environment don’t interfere with others. You can switch between environments using a simple command, which avoids having to duplicate Terraform files for each environment.  

---

### 3. Why is storing state remotely better than keeping it local, especially in a team setup?
When working in a team, storing the state file remotely (like in a GCS bucket) makes collaboration easier. It ensures that everyone is working with the same state and prevents conflicts. Remote state also supports locking, so two people don’t accidentally make changes at the same time. It’s safer because the state file won’t be lost if someone’s computer crashes.  

---

## Modularization and Workspaces

This project is organized into **modules** to make the Terraform code reusable and maintainable.  
- The **VM module** creates virtual machines.  
- The **Storage module** creates Google Cloud Storage buckets.  

Workspaces are used to separate environments like dev and staging. Resource names are generated dynamically based on the active workspace (e.g., terraform-vm-dev, terraform-vm-staging). Terraform automatically keeps the state files separate for each workspace in the backend.

The backend is configured to use a GCS bucket for remote state, so multiple people can work on the same infrastructure safely.

---

