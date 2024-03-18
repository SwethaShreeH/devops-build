# build.sh
#!/bin/bash

docker-compose build

docker tag devops-build_my-react-app swetha1003/devlatest
docker push swetha1003/dev:latest
