# build.sh
#!/bin/bash

docker-compose build
docker tag devops-build-my-react-app swetha1003/dev:dev
docker push swetha1003/dev:dev
