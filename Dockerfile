FROM ubuntu:16.04
MAINTAINER "michel.laporte@essencedigital.com"
# Update the APT cache & Backup Sources list
RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get update
#Install requirements
RUN apt-get install -y apt-utils curl wget locales software-properties-common python-software-properties
RUN locale-gen en_GB en_GB.UTF-8

#Grab oracle java (auto accept licence)
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN apt-get install -y ruby-full

#variables
ENV USER looker
ENV HOME_DIR /home/looker/looker

#Add Looker and Group
RUN groupadd $USER
RUN useradd -m -g $USER $USER

#switch to Looker
WORKDIR $HOME_DIR

EXPOSE 9999
EXPOSE 19999

USER $USER
ENTRYPOINT ["./looker.sh"]
CMD ["start"]
