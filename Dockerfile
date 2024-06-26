# pull official base image
FROM node:13.12.0-alpine

# set working directory
WORKDIR deep_patel_site

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

EXPOSE 7775
# start app
CMD ["npm", "run", "start"]