FROM node:alpine as builder
WORKDIR /app
# Grabbing package.json and package-lock.json to ensure package versioning
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:latest
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
