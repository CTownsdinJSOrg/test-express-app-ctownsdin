# test-express-app-ctownsdin

As a learning exercise we have...

- Built a hello world expressJS server
- Dockerized it
- Pushed to to aws ecr
- And built deployment infra using terraform scripts.

The project was deployed to my personal aws sandbox account successfully.

## How to Docker Push To ECR

**AWS ECR with Docker Documenation Link**
https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html

## TLDR Version

**Login to docker**

```
aws ecr get-login-password \
| docker login --username AWS --password-stdin 034418006837.dkr.ecr.us-west-2.amazonaws.com
```

**Create your repository**
`aws ecr create-repository --repository-name test-express`

**Tag for the Repository**
`docker images`
`docker tag test-express:latest 034418006837.dkr.ecr.us-west-2.amazonaws.com/test-express:latest`

**Push to the DR**
`docker push 034418006837.dkr.ecr.us-west-2.amazonaws.com/test-express:latest`
