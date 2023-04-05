FROM python:3-alpine
RUN apk add ansible
RUN apk add openssh-client
RUN adduser -D jenkins
RUN mkdire /tmp/.ansible
RUN chmod -R 1777 /tmp
RUN chown jenkins:jenkins /tmp
WORKDIR /tmp
USER jenkins
