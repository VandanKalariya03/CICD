FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN apk add --no-cache bash
RUN apk add --no-cache curl 
EXPOSE 8000
CMD ["node","app.js"]
