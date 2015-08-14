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
      @langs = @connect.request('getLangs', data)
    end

    def translate(text, lang = 'en-ru', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      return @connect.request('lookup', data)
    end
  end
end
