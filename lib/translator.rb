require 'yaml'
require 'pry'

def load_library(file_path)
  library = {}
  YAML.load_file(file_path).each do |_str, array|
    english, japanese = array
    library[english] = japanese
  end
  library
end

def translate(emoticon)
  library = load_library("./lib/emoticons.yml")
  result = library[emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end