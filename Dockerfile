
#syntax=docker/dockerfile:1
FROM ubuntu:20.04
#
#
MAINTAINER scondo@bearcognition.com

RUN apt-get update
RUN apt-get install awscli
RUN aws configure set aws_access_key_id AKIA2J5TNKDRKOHUTUGF
RUN aws configure set aws_secret_access_key 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 
RUN aws configure set default.region us-east-1
RUN aws s3api create-bucket --bucket customer

CMD ["echo", "Image Done"]