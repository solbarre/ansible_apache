FROM python:3-alpine
RUN apk add ansible
RUN apk add openssh-client
RUN adduser -D jenkins
RUN mkdir /.ansible /.ansible/cp
RUN chmod -R 1777 /.ansible
RUN chown -r jenkins:jenkins /.ansible
USER jenkins
