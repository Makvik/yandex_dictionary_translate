require_relative 'lib/yandex_dictionary_translate'

# Need Yandex Key
key = ""

yandex = YandexDictionaryTranslate::Client.new(key)

puts "\nWord translate - Hello"
puts yandex.lookup("Hello")

puts "\nAll Language"
puts yandex.get_langs
