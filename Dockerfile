# Create a Jekyll container from a Ruby Alpine image
FROM --platform=linux/amd64 ruby:3.1.6-alpine3.20 

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll