# Base Image
FROM node:16-alpine AS base
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .

#Dev
FROM base AS dev
CMD ["npm", "run", "start"]

# Prod 
FROM base AS prod
RUN npm run build

FROM nginx
EXPOSE 80
<<<<<<< HEAD:Dockerfile
COPY --from=prod /app/build /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]

=======

COPY --from=prod /app/build /usr/share/nginx/html
>>>>>>> fbef693ad59a13e6d81a100c34e0aa53c7b3b2f8:CAPM_Codes/Dockerfile
