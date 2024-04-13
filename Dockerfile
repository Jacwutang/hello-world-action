FROM node:14

# WORKDIR /app

COPY index.js /index.js

RUN npm install

EXPOSE 3000

RUN pwd
RUN ls
RUN ["chmod", "+x", "index.js"]

ENTRYPOINT ["node", "/index.js"]