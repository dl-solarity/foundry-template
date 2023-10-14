FROM ghcr.io/foundry-rs/foundry:latest as foundry

RUN apk update

FROM node:latest

COPY --from=foundry /usr/local/bin/forge /usr/local/bin/forge
COPY --from=foundry /usr/local/bin/cast /usr/local/bin/cast
COPY --from=foundry /usr/local/bin/anvil /usr/local/bin/anvil
COPY --from=foundry /usr/local/bin/chisel /usr/local/bin/chisel

RUN apt-get update && apt-get install -y \
  make \
  lcov

RUN npm install -g npm@latest

ENTRYPOINT ["/bin/bash", "-c", "tail -F 'Wait for commands'"]
