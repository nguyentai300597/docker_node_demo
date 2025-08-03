# docker_node_demo

# run jenkins:
 docker-compose up -d

# get password:
 docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

 =>cc08b134e8554084b10f366a1389d4eb

 # user-pass: NGUYENDUCTAI

<!-- # build file jenkin
 docker build -t jenkins-docker-enabled -f Dockerfile.jenkins . -->

docker run \
  -u root \
  -d \
  -p 8080:8080 -p 50000:50000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v jenkins_home:/var/jenkins_home \
  jenkins-docker-enabled





