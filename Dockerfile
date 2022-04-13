FROM alpine:latest
LABEL description="Docker container for building VSCode extensions" \
      version="1.0" \
      maintainer="sandroid"
VOLUME [ "/package" ]
# Install dependencies
RUN apk add npm --update-cache && npm install -g vsce
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]
