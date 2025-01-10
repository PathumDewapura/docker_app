# syntax=docker/dockerfile:1
# webhook test
# added another line
FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000