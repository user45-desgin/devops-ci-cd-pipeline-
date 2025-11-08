+----------------+
|                |
|  Code Push     |
+-------+--------+
        |
        v
+----------------+
| GitHub Repo    |
| (Flask App)    |
+-------+--------+
        |
        | triggers workflow
        v
+----------------------------+
| GitHub Actions Pipeline    |
| - Run tests                |
| - Build Docker image       |
| - Push to DockerHub        |
| - Deploy to EC2 via SSH    |
+---------------+------------+
                |
                v
       +----------------+
       | DockerHub      |
       | (Image Store)  |
       +-------+--------+
               |
               v
       +----------------+
       | AWS EC2        |
       | Docker Run App |
       +-------+--------+
               |
               v
       +----------------+
       | User Browser   |
       | Access App     |
       +----------------+
# trigger deploy
# retry docker push
# validation trigger
# redeploy trigger Sat Nov  8 18:07:12 IST 2025
