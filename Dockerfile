FROM node:latest
WORKDIR usr/src/app
COPY package.json ./
RUN bun install
COPY . ./
RUN bun run build
CMD ["bun", "start"]
