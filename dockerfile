FROM python:3-alpine
RUN apk add ansible
RUN apk add openssh-client
RUN adduser -D jenkins
RUN mkdir /var/lib/workspace/ansible/.ansible/cp
RUN chmod -R 1777 /var/lib/workspace
RUN chown jenkins:jenkins /var/lib/workspace
USER jenkins
