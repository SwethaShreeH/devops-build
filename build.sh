# build.sh
#!/bin/bash

docker-compose build

docker tag default_my-react-app:latest swetha1003/dev:latest
docker push swetha1003/dev:latest
