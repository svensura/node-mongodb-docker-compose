FROM node:12.18.1
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
ENV NODE_ENV=production
CMD ["npm", "start"]

# DEV CONFIG
#FROM prod as dev

#EXPOSE 3000

#ENV NODE_ENV=development

#RUN npm install -g nodemon

#RUN npm install --only=dev

#CMD [ "npm", "run", "dev" ]