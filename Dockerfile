FROM ubuntu:16.04
MAINTAINER "michel.laporte@essencedigital.com"
# Update the APT cache & Backup Sources list
RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get update
#RUN apt-get upgrade -y

# Install and setup project dependencies
RUN apt-get install -y apt-utils curl wget locales
RUN locale-gen en_GB en_GB.UTF-8
#Set Local
RUN locale-gen en_GB.UTF-8
# ENV LANG en_GB.UTF-8
# ENV LANGUAGE en_GB:en
# ENV LC_ALL en_GB.UTF-8

#prepare for Java download
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

#grab oracle java (auto accept licence)
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

#Add Looker and Group
RUN groupadd looker
RUN useradd -m -g looker looker

#switch to Looker
USER looker
RUN mkdir /home/looker/looker
WORKDIR /home/looker/looker/

#Download Looker Jar
RUN wget https://s3.amazonaws.com/download.looker.com/aeHee2HiNeekoh3uIu6hec3W/looker-latest.jar
RUN mv looker-latest.jar looker.jar
