# sonarqube-docker

## First steps

Run stack wiith command:

```shell
docker-compose up -d postgres sonarqube
```

Access `http://localhost:8000`, enter `[user: admin, password: admin]` and set a new password.

Update the new password in `docker-compose.yaml sonar-scanner SONAR_PASSWORD` environment variable.

## Scanning

Use command:

```shell
make scan service=my_app
```

where `my_app` is a directory at same level of `Makefile` and `docker-compose.yaml`. (Actualy, it is the relative path from Makefile to your application)

Your project will be analyzed and the results can be accessed at [http://localhost:8000/projects](http://localhost:8000/projects).
