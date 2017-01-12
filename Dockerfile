# Starting from the official Elixir 1.3.2 image:
# https://hub.docker.com/_/elixir/
FROM elixir:1.3.2

ENV DEBIAN_FRONTEND=noninteractive

RUN groupadd -o -g 1000 user
RUN useradd -o -m -s /bin/bash -u 1000 -g 1000 user

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs

USER user

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install the Phoenix framework itself
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Set /app as workdir
WORKDIR /app