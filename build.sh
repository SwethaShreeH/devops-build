# build.sh
#!/bin/bash

docker-compose build

docker tag devops-build-my-react-app swetha1003/dev:latest
docker push swetha1003/dev:latest
