FROM ubuntu

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_19.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

WORKDIR /app/

COPY ./ /app/

RUN npm install

CMD [ "npm", "start" ]

ENTRYPOINT [ "node", "main.js" ]