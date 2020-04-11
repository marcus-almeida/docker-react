# STAGE 1: Build
FROM node:alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

# STAGE 2: Deployment
FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html