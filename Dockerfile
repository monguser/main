# Dev
FROM node:16-alpine AS base
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "run", "start"]

#Prod 
FROM base AS prod
RUN npm run build

FROM nginx

EXPOSE 80

COPY --from=prod /app/build /usr/share/nginx/html

