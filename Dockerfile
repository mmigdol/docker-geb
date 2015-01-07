# This is a WIP to try to run Geb scripts from a docker container
# Curently, still trying to get just firefoxDriver to work

FROM ubuntu:latest
MAINTAINER michael@migdol.net

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y build-essential git python-dev python-virtualenv wget unzip

# Browser stuff
RUN apt-get install -y xterm
RUN apt-get install -y -q x11vnc xvfb 
RUN apt-get install -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
RUN apt-get install -y firefox
ENV DISPLAY :0

# Gradle
WORKDIR /usr/bin
RUN wget https://services.gradle.org/distributions/gradle-2.1-all.zip && \
  unzip gradle-2.1-all.zip && \
  ln -s gradle-2.1 gradle && \
  rm gradle-2.1-all.zip
ENV GRADLE_HOME /usr/bin/gradle
ENV PATH $PATH:$GRADLE_HOME/bin
# Put Gradle cache in /var so it can it is part of container
ENV GRADLE_USER_HOME /var/cache/gradle

# Java
RUN apt-get install -y openjdk-7-jdk
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Start XVFB
RUN Xvfb $DISPLAY -ac &
#RUN apt-get install -y software-properties-common


# Prime the Gradle cache with dependencies needed to run simple Geb scripts
WORKDIR /root
RUN git clone https://github.com/geb/geb-example-gradle.git
WORKDIR geb-example-gradle

RUN ls -l /usr/bin/gradle
RUN gradle testClasses

CMD gradle --debug firefoxTest


