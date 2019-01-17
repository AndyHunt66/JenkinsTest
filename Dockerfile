#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository
RUN apt-get update

RUN apt-get install -y perl

RUN apt-get install -y git
RUN mkdir -p /Dump/scripts 

WORKDIR /Dump/scripts
RUN git clone https://github.com/AndyHunt66/JenkinsTest.git

CMD ["/bin/bash"]
#CMD ["ls -las /"]
CMD ["/bin/chmod +x /Dump/scripts/JenkinsTest/script.pl"]
CMD ["/Dump/scripts/JenkinsTest/script.pl"]

