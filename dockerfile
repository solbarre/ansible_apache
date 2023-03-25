FROM python:3-alpine
RUN apk add ansible
RUN apk add openssh-client
RUN adduser -D jenkins
RUN chmod 777 /tmp
USER jenskins
