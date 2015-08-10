require 'json'
require 'net/http'

module YandexDictionaryTranslate
  class Connect
    def initialize(key)
      @key = key
    end

    def get(type, data)
      postfix = URI.encode_www_form(data)
      return JSON.parse(Net::HTTP.get(URI("#{BASE_URI}/#{type}?key=#{@key}&#{postfix}")))
    end

    private
      BASE_URI = 'https://dictionary.yandex.net/api/v1/dicservice.json'.freeze
  end
end
