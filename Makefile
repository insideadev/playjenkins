docker-build:
	docker build -t myjenkins-blueocean:2.361.1-1 .

docker-run:
	docker run -d --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_data:/var/jenkins_home jenkins/jenkins:lts

docker-exec:
	docker exec -it jenkins-blueocean bash

log:
	sudo cat /var/lib/jenkins/secrets/initialAdminPassword