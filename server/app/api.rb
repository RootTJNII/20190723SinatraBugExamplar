#!/usr/bin/env ruby
require "sinatra"
require "json"

set :environment, :production
set :bind, "0.0.0.0"

cache = {}

get "/cache/:id" do
  cache[params["id"]] ||= params["id"]

  # Dump the cache to STDOUT with some minimal formatting
  cache.each_pair do |key, value|
    puts "     #{key} => #{value}"
  end

  content_type "application/json"
  JSON.dump(key: cache[params["id"]])
end
