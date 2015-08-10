require 'yandex_dictionary_translate'

key = ""

yandex = YandexDictionaryTranslate::Client.new(key)

puts "\nWord translate - Hello"
puts yandex.lookup("Hello")

puts "\nAll Language"
puts yandex.get_langs
