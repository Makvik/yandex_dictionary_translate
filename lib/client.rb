require "connect"

module YandexDictionaryTranslate
  class Client
    def initialize(key)
      @connect = Connect.new(key)
      @langs = get_langs_update
    end

    def get_langs
      return @langs
    end

    def get_langs_update(lang = 'en')
      data = {"ui" => lang}
      @langs = @connect.get('getLangs', data)
    end

    def lookup(text, lang = 'en-ru', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      return @connect.get('lookup', data)
    end
  end
end
