          ┌───────────────────────────────┐
          │        Developer              │
          │   Push code to GitHub repo    │
          └──────────────┬────────────────┘
                         │
                         ▼
          ┌───────────────────────────────┐
          │        GitHub Actions          │
          │  - Checkout Code               │
          │  - Install Requirements        │
          │  - Run Tests                   │
          │  - Build Docker Image          │
          │  - Push to DockerHub           │
          └──────────────┬────────────────┘
                         │
                         ▼
          ┌───────────────────────────────┐
          │          DockerHub            │
          │  Stores Image (flask-ci-cd)   │
          └──────────────┬────────────────┘
                         │
                         ▼
          ┌───────────────────────────────┐
          │           AWS EC2             │
          │ - Pulls latest image          │
          │ - Runs container              │
          │ - Exposes port 80             │
          └──────────────┬────────────────┘
                         │
                         ▼
          ┌───────────────────────────────┐
          │         End User              │
          │ Access app via EC2 public IP  │
          │     http://<ec2-public-ip>    │
          └───────────────────────────────┘
