for 14
# pull official base image
FROM node:20.12.2-alpine

# set working directory
WORKDIR /lastName_firstName_final_site

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm ci


# add app
COPY . ./

EXPOSE 5575
# start app
CMD ["npm", "run", "start"]


final
# Pull official base image
FROM node:20.12.2-alpine

# Set working directory
WORKDIR /lastName_firstName_final_site

# Add `/app/node_modules/.bin` to $PATH
ENV PATH /lastName_firstName_final_site/node_modules/.bin:$PATH

# Install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm ci

# Add app source code
COPY . ./

# Build the app
RUN npm run build

# Install a simple server to serve the build
RUN npm install -g serve

# Expose port
EXPOSE 5575

# Start the app
CMD ["serve", "-s", "build", "-l", "5575"]





First clone the git repo then do the following commands where you have cloned the repo


# Build image
```
docker build . -t "patel_deep_coding_assignment_11:v1.0"
```



# Run application
```
docker run --name patel_deep_coding_assignmen__t11 -dp 7775:7775 patel_deep_coding_assignment_11:v1.0
```
