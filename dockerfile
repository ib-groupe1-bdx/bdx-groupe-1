FROM node:14.16

LABEL maintainer="ib-groupe1-bdx"

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
RUN git clone https://github.com/ib-groupe1-bdx/bdx-groupe-1
RUN cp -r bdx-groupe-1/* . && rm -rf bdx-groupe-1

# Install app dependencies
RUN npm install

EXPOSE 3000
CMD [ "node", "./bin/www" ]