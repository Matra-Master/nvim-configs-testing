FROM anatolelucet/neovim:latest-alpine as base
RUN apk update && apk add --no-cache tzdata make gcc ripgrep unzip git xclip

FROM base as extras
ARG EXTRA_PACKAGES=""
RUN if [ -n "$EXTRA_PACKAGES" ]; then apk add --no-cache $EXTRA_PACKAGES; fi
