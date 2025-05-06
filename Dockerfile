FROM node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Use a lightweight web server to serve the static files
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html