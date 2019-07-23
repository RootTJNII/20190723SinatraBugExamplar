#!/usr/bin/env ruby

require 'httparty'
require 'securerandom'
require 'json'

keys = Array.new(10) { SecureRandom.hex }

loop do
  puts "Main loop iterating"
  keys.each do |key|
    resp = HTTParty.get("http://127.0.0.1:4567/cache/#{key}")
    raise("bad response code #{resp.code}") unless resp.ok?
  end
end
