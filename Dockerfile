FROM java:8

RUN apt-get update
RUN apt-get install -y maven
RUN apt-get install -y python-pip
RUN pip install awscli
RUN apt-get install groff
RUN /usr/share/groff# apt-get install --reinstall groff-base

WORKDIR /code

ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

ADD src /code/src
RUN ["mvn", "package"]

EXPOSE 4567
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/mastermind-jar-with-dependencies.jar"]