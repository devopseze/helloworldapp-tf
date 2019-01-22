[
  {
    "essential": true,
    "memory": 256,
    "name": "helloworldapp",
    "cpu": 256,
    "image": "${REPOSITORY_URL}:1",
    "portMappings": [
        {
            "containerPort": 5000,
            "hostPort": 5000
        }
    ]
  }
]

