FROM elixir:1.7.4

WORKDIR /app
COPY run.sh .

RUN apt-get update && \
    apt-get install -y build-essential inotify-tools postgresql-client

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix archive.install hex phx_new 1.4.0 --force

RUN curl -SL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    npm install yarn

EXPOSE 4000
CMD ["/bin/bash"]
