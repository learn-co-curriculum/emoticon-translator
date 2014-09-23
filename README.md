---
tags: strings, hashes, yaml, iteration
languages: ruby
resources: 3
level: introductory hash iteration
---
# Emoticon Translator

## Background

Your friend JJ just moved to Japan and loves it. However, sometimes he gets confused because his new friends text him emoticons that he doesn't recognize, like `＼(◎o◎)／!` and `((d[-_-]b))`. 

He asked you to create a method that will translate these emoticons to English. He also asked you to create a method that will convert his English emoticons, like `:)`, into their Japanese equivalents so that he can look cool in texts to his new friends from The Land of the Rising Sun.

## Objectives

1. Write a method that loads the `emoticons.yml` file.

2. Write a method that will take a traditional Western emoticon, like `:)` and translate it to its Japanese version. It will rely on the method above. Refer to the table below for translations.

3. Write a method that takes a Japanese emoticon and returns its meaning in English. This method will also rely on the first method you wrote, the YAML file loader.

|Meaning   | English | Japanese    |
|----------|:-------:|:-----------:|
|angel     |O:)      |☜(⌒▽⌒)☞      |
|angry     |>:(      |ヽ(ｏ`皿′ｏ)ﾉ  |
|bored     |:O       |(ΘεΘ;)       |
|confused  |%)       |(゜.゜)       |
|embarrased|:$       |(#^.^#)      |
|fish      |><>      |>゜))))彡     |
|glasses   | 8D      |(^0_0^)      |
|grining   |=D       |（￣ー￣）     |
|happy     |:)       |（＾ｖ＾）     |
|kiss      |:*       |(*^3^)/~☆     |
|sad       |:'(      |(Ｔ▽Ｔ)       |
|surprised |:o       | o_O         |
|wink      |;)       |(^_-)        |



## Instructions

This is a test-driven lab so just get those specs to pass! The first step will be to load the YAML file in the `lib/` folder. Check out the resources below for help loading a YAML file.

## Resources
* [Wikipedia](http://en.wikipedia.org/) - [List of Emoticons](http://en.wikipedia.org/wiki/List_of_emoticons)
* [Ruby Docs](http://www.ruby-doc.org/) - [YAML Module](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/yaml/rdoc/YAML.html)
* [Stack Overflow](http://stackoverflow.com/) - [Loading a YAML File](http://stackoverflow.com/a/3877355)


