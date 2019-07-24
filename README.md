# Emoticon Translator

## Learning Goals

- Convert data from a file into Ruby collections
- Restructure array and hash data

## Background

Your friend JJ just moved to Japan and loves it. However, sometimes he gets
confused because his new friends text him emoticons that he doesn't recognize,
like `＼(◎o◎)／!` and `((d[-_-]b))`.

He asked you to create a method that will translate these emoticons to English.
He also asked you to create a method that will convert his English emoticons,
like `:)`, into their Japanese equivalents so that he can look cool in texts to
his new friends.

## Instructions

1. Write a method, `load_library`, that loads the `emoticons.yml` file.

2. Write a method, `get_japanese_emoticon`, that will take a traditional Western
   emoticon, like `:)` and translate it to its Japanese version. It will rely
   `load_library` to work. Refer to the table below for translations.

3. Write a method, `get_english_meaning`, that takes a Japanese emoticon and
   returns its meaning in English. This method will also rely on `load_library` to
   first load the YAML file.

| Meaning    | English |   Japanese    |
| ---------- | :-----: | :-----------: |
| angel      |   O:)   |    ☜(⌒▽⌒)☞    |
| angry      |   >:(   | ヽ(ｏ`皿′ｏ)ﾉ |
| bored      |   :O    |    (ΘεΘ;)     |
| confused   |   %)    |    (゜.゜)    |
| embarrassed |   :$    |    (#^.^#)    |
| fish       |   ><>   |   >゜))))彡   |
| glasses    |   8D    |    (^0_0^)    |
| grinning    |   =D    |  （￣ー￣）   |
| happy      |   :)    |  （＾ｖ＾）   |
| kiss       |   :\*   |  (\*^3^)/~☆   |
| sad        |   :'(   |   (Ｔ ▽ Ｔ)   |
| surprised  |   :o    |      o_O      |
| wink       |   ;)    |    (^\_-)     |

## What is YAML?

### About

YAML is a recursive acronym for "YAML Ain't Markup Language". YAML is used
because it is easier for humans to read and write than typing out entire arrays,
hashes, etc.

### Example 1

For instance, take this fruit YAML file:

```yml
# fruits.yml
- Apple
- Orange
- Strawberry
- Mango
```

When Ruby loads the the YAML file above, the list of fruits would become an
array:

```ruby
require "yaml"
fruits = YAML.load_file('fruits.yml')

fruits
# => ["Apple","Orange","Strawberry","Mango"]
```

### Example 2

Another example could be a hash:

```yml
# government.yml
president: Barack Obama
vice president: Joe Biden
secretary of state: John Kerry
secretary of the treasury: Jacob Lew
```

When Ruby loads the the YAML file above, the list of position titles and names
would become a hash of keys and values:

```ruby
require "yaml"
gov = YAML.load_file('government.yml')

gov
# =>
# {
#   "president" => "Barack Obama",
#   "vice president" => "Joe Biden",
#   "secretary of state" => "John Kerry",
#   "secretary of the treasury" => "Jacob Lew"
# }
```

### Final Words about YAML

A YAML file has an extension of `.yml`. For more info about YAML syntax, see
[Ansible's docs][ansible]. You can read more about YAML
[on the Wikipedia page][wiki].

## Notes on this Lab

This is a test-driven lab so just get those specs to pass! The first step will
be to load the YAML file in the `lib/` folder. Check out the resources below for
help loading a YAML file.

**Important**: When defining hash keys, depending on the syntax that you use,
Ruby may automatically convert a given String key into a Symbol. So, for
instance, if we were to open IRB and declare a hash using the hash-rocket, the
resulting key remains a String:

```ruby
hash = {"get_emoticon" => {}}
hash #=> {"get_emoticon"=>{}}
```

However, if the alternate syntax is used, the key will be converted:

```ruby
hash = {"get_emoticon": {}}
hash #=> {:get_emoticon=>{}}
```

Keep this in mind as you work on this lab. The tests will accept either, but you will need to be consistent in your own code when referencing hash keys. YAML will not convert the emoticons to symbols when reading `emoticons.yml`.

## Resources

- [Wikipedia][wiki]
- [YAML][yaml]
- [Stack Overflow](http://stackoverflow.com/) - [Loading a YAML File](http://stackoverflow.com/a/3877355)
- [List of Emoticons][emoticons]

[wiki]: http://en.wikipedia.org/wiki/YAML
[yaml]: https://ruby-doc.org/stdlib-2.5.0/libdoc/yaml/rdoc/YAML.html
[emoticons]: http://en.wikipedia.org/wiki/List_of_emoticons
[ansible]: http://docs.ansible.com/YAMLSyntax.html

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/emoticon-translator' title='Emoticon Translator'>Emoticon Translator</a> on Learn.co and start learning to code for free.</p>
