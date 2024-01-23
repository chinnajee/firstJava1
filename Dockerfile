FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install -y openjdk-11-jdk-headless
ADD Hello.java /
RUN javac Hello.java
CMD ["java","Hello"]
