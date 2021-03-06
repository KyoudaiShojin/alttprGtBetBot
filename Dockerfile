FROM node:10.15.3


ENV APP_DIR /app/current
WORKDIR ${APP_DIR}

COPY . .
RUN npm i --production
ENV PATH /usr/src/node_modules/.bin:$PATH

EXPOSE 80 8080
CMD ["node", "bot"]