FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get update -y
RUN apt-get install -y nodejs
 
