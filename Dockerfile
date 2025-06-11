FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get update -y
RUN apt-get install -y nodejs
 

# above code to install node and below  code to files whose copy needed in container
WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY . .

COPY index.js index.js


RUN npm install

ENTRYPOINT [ "node", "index.js" ]