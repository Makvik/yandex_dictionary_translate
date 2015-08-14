module YandexDictionaryTranslate
  ERROR_CODES = {
    401 =>:ERR_KEY_INVALID,
    402 =>:ERR_KEY_BLOCKED,
    403 =>:ERR_DAILY_REQ_LIMIT_EXCEEDED,
    404 =>:ERR_DAILY_CHAR_LIMIT_EXCEEDED,
    413 =>:ERR_TEXT_TOO_LONG,
    422 =>:ERR_UNPROCESSABLE_TEXT,
    501 =>:ERR_LANG_NOT_SUPPORTED}

  class Error < StandardError
  end
end
