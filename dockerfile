FROM python:3-alpine
RUN apk add ansible
RUN apk add openssh-client
RUN adduser -D jenkins
RUN mkdir /.ansible
RUN mkdir /.ansible/cp
RUN chmod -R 1777 /.ansible
RUN chown jenkins:jenkins /var/lib/workspace
USER jenkins
