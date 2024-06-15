FROM node:16.20.2-alpine as build-stage
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm run build

FROM node:16.20.2-alpine
WORKDIR /usr/src/app
EXPOSE 5000
COPY --from=build-stage /usr/src/app/build  /usr/src/app/build
RUN  npm install -g serve 
CMD ["serve", "-s", "-l", "5000", "build"]