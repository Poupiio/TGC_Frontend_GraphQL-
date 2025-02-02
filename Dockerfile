FROM node:lts-alpine

WORKDIR /app

COPY package.json package.json
RUN npm install

COPY src src
COPY codegen.ts codegen.ts
COPY index.html index.html
COPY tsconfig.app.json tsconfig.app.json
COPY tsconfig.json tsconfig.json
COPY tsconfig.node.json tsconfig.node.json
COPY vite.config.ts vite.config.ts

CMD npm run start