# STAGE 1: Build
FROM node:alpine AS build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# STAGE 2: Deployment
FROM nginx
COPY --from=build /app/build /usr/share/nginx/html