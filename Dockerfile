FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get update -y
RUN apt-get install -y nodejs
 

# above code to install node and below  code to files whose copy needed in container

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
COPY . .

COPY index.js /app/index.js


RUN cd app &&  npm install

ENTRYPOINT [ "node", "/app/index.js" ]