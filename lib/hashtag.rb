def hashtags(string)
  string.scan(/#[[:word:]-]+/)
end