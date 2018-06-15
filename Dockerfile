FROM jekyll/jekyll AS base
WORKDIR /srv/jekyll
COPY . .
RUN bundle update

FROM base
RUN jekyll build
EXPOSE 4000
ENTRYPOINT [ "jekyll", "serve" ]