# Build jenkins_cli
```
docker build -t opsify/jenkins_cli -f jenkins_setup/Dockerfile ./jenkins_setup
```

# Build Jenkins
```
docker build -t opsify/jenkins .
```

# Run docker
```
docker-compose up -d
```
```
    docker run --name opsify_jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password opsify/jenkins
```

# Check by remote to jenkins and run jenkins-cli
```
    /opt/createjobs.sh
```