FROM anapsix/alpine-java:jre8

RUN apk upgrade --update && apk add graphviz git subversion mercurial docker

ADD http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/2.0/swarm-client-2.0-jar-with-dependencies.jar swarm-client.jar
ENTRYPOINT [ "java",  "-jar",  "swarm-client.jar" ]
