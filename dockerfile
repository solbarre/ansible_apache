FROM python:3-alpine
RUN apk add ansible
RUN apk add openssh-client
RUN adduser jenkins
USER jenskins
