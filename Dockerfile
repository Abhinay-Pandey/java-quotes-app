#1 Base image (OS)

FROM eclipse-temurin:17-jdk-alpine

#2 Working directory for the app

WORKDIR /app

#3 code the code from host to the container (working directory) 
COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

#4 Run the commands to install or to compile code 

RUN javac Main.java

#5 expose the port 8000

EXPOSE 8000

#6 server the app /keep it running 
CMD ["java", "Main"]


