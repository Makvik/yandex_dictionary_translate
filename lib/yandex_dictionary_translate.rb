require_relative "yandex_dictionary_translate/version"
require 'json'
require 'net/http'
require 'uri'

[ "client",
  "error",
  "error",
  "url",
  "connect"
].each do |file|
  require_relative file
end