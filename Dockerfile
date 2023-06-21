FROM ruby:3.2.2 AS rails-toolbox

# Default directory
# Install rails
RUN gem install rails bundler
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
# Run a shell
CMD ["/bin/sh"]
