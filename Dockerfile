FROM node:18 AS builder

WORKDIR /app

COPY . .

RUN rm -rf node_modules package-lock.json


RUN yarn install
RUN npm run build

EXPOSE 3000


FROM nginx:1.24.0-alpine
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html

#CMD ["npm", "start"]
