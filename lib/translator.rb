require 'yaml'

def load_library(file_path)
  YAML.load_file(file_path)
end

def translate
  library = load_library("./lib/emoticons.yml")
end