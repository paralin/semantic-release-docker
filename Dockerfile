FROM node:6.3.1

RUN apt-get update && apt-get install -y libgnome-keyring-dev && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN npm install -g semantic-release-cli

WORKDIR /usr/src/app
VOLUME ["/usr/src/app"]
ENTRYPOINT ["semantic-release-cli"]
