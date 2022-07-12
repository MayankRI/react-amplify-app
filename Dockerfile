FROM public.ecr.aws/h4m7c9h3/baseimages:12
WORKDIR usr/src/app
COPY package*.json ./
RUN bun install react-refresh
RUN bun install
COPY ./ ./
RUN bun run build
CMD yarn run start
