# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    Karmats GoCD monitor image
# tag:      latest
# name:     darioblanco/gocd-monitor
# version:  v0.0.1
# repo:
# how-to:   docker build -t darioblanco/gocd-monitor:latest .
# Requires: node:7.2-alpine
# authors:  dario@darioblanco.com
# ------------------------------------------------------

FROM node:7.2-alpine
ENV NPM_CONFIG_LOGLEVEL warn

# Set GoCD monitor default environment variables
ENV GOCD_MONITOR_PORT 3000
ENV GOCD_MONITOR_DEVPORT 3001
ENV GOCD_SERVER_URL https://ci.example.com
ENV GOCD_USER admin
ENV GOCD_PASSWORD password
ENV GOCD_MONITOR_POLLING_INTERVAL 30
ENV GOCD_MONITOR_SWITCH_PAGES_INTERVAL 0

# Install bash (for container ssh troubleshooting)
RUN apk add --update bash && rm -rf /var/cache/apk/*

# Install Karmats GoCD Monitor
RUN ["apk", "add", "--no-cache", "git"]
RUN ["git", "clone", "https://github.com/karmats/gocd-monitor.git"]
WORKDIR "/gocd-monitor"
ADD app-config.js .
RUN ["npm", "install"]

# Run karmats GoCD Monitor when launching container
ENTRYPOINT ["npm", "start"]
