## Core Concept Questions

### 1. Why would a startup choose GCP over other providers for compute and storage?

Startups often prioritize cost, scalability, and ease of use. GCP offers several advantages:
- **Free Tier & Credits**: GCP provides generous free tier options (like e2-micro VM, Cloud Storage, etc.) and $300 in credits for new users.
- **Pay-as-you-go Pricing**: You only pay for what you use great for startups with unpredictable workloads.
- **Integrated Tools**: GCP integrates well with modern tools (Kubernetes, BigQuery, Firebase) which startups often use to build scalable and data-driven applications.
- **Security & Performance**: Google’s global infrastructure ensures strong security and fast network performance even for small teams.

---

### 2. What are the advantages of using VPCs over default networking?

Using custom VPCs gives you:
- **Full Control**: Define your own IP ranges, subnets, firewall rules, and routing — crucial for security and scaling.
- **Isolation**: You can isolate environments like dev, test, and prod in separate networks.
- **Granular Access**: Apply IAM and firewall rules at the subnet or instance level for tighter security.
- **Better Design**: You can structure your network based on your app architecture, unlike the flat layout in default networks.

---

### 3. How do GCP regions and zones impact performance and availability in global apps?

- **Regions** are geographic locations (e.g., "us-central1", "asia-south1") containing multiple **zones**.
- **Zones** are isolated locations within a region (e.g., "us-central1-a", "us-central1-b").

Benefits:
- **High Availability**: Distributing resources across zones ensures your app keeps running even if one zone fails.
- **Low Latency**: Hosting services closer to end users reduces response time.
- **Global Reach**: You can deploy globally while complying with data residency and redundancy requirements.
