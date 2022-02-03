
ARG customer

FROM ubuntu.latest
#
#
MAINTAINER scondo@bearcognition.com

RUN apt-get update
RUN apt-get install awscli
RUN aws configure set aws_access_key_id default_access_key
RUN aws configure set aws_secret_access_key default_secret_key 
RUN aws configure set default.region us-east-1
RUN aws s3api create-bucket --bucket customer

CMD ["echo", "Image Done"]