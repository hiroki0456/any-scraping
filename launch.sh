cp -rf /tmp/public/* /app/public/
mkdir -p tmp/sockets
bundle exec puma -C config/puma.rb
rails db:migrate