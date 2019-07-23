#!/usr/bin/env ruby
require "sinatra"
require "json"

set :environment, :production
set :bind, "0.0.0.0"

set :cache, Hash.new

get "/cache/:id" do
  settings.cache[params["id"]] ||= params["id"]

  # Dump the cache to STDOUT with some minimal formatting
  settings.cache.each_pair do |key, value|
    puts "     #{key} => #{value}"
  end

  content_type "application/json"
  JSON.dump(key: settings.cache[params["id"]])
end
