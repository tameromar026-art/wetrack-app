FROM node:22-slim
WORKDIR /app
COPY . .
ENV HOST=0.0.0.0 PORT=3000 DB_FILE=/data/wetrack.db
VOLUME /data
EXPOSE 3000
CMD ["node","--no-warnings","server.js"]
