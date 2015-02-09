describe "#load_library" do

  it "accepts one argument, the file path" do
    expect { load_library("./lib/emoticons.yml") }.to_not raise_error
  end

  context "return value" do

    let(:result) { load_library("./lib/emoticons.yml") }

    it "returns a hash" do
      expect(result.class).to eq(Hash)
    end

    it "has two keys, 'get_meaning' and 'get_emoticon'" do
      ["get_emoticon", "get_meaning"].each { |k| expect(result.keys).to include(k) }
      expect(result.keys.length).to eq(2) 
    end

    it "the keys 'get_meaning' and 'get_emoticon' point to inner hashes" do
      ["get_emoticon", "get_meaning"].each { |k| expect(result[k].class).to eq(Hash) }
    end

    it "the keys inside the 'get_meaning' hash are the Japanese emoticons" do
      emoticons = ["☜(⌒▽⌒)☞", "(ΘεΘ;)", "(￣ー￣)", "o_O", "(^_-)"]
      emoticons.each { |emoticon| expect(result['get_meaning'].keys).to include(emoticon) }
    end

    it "the emoticon keys inside the 'get_meaning' hash point to their meanings" do
      emoticons = {"☜(⌒▽⌒)☞" => "angel", "(ΘεΘ;)" => "bored", "o_O" => "surprised", "(^_-)" => "wink"}
      emoticons.each { |e,m| expect(result['get_meaning'][e]).to eq(m) }
    end

    it "the keys inside the 'get_emoticon' hash are the English emoticons" do
      emoticons = ["O:)", ":'(", ";)", ":$"]
      emoticons.each { |emoticon| expect(result['get_emoticon'].keys).to include(emoticon) }
    end

    it "the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents" do
      emoticons = {"O:)" => "☜(⌒▽⌒)☞", ":'(" => "(Ｔ▽Ｔ)", ";)" => "(^_-)"}
      emoticons.each { |e,j| expect(result['get_emoticon'][e]).to eq(j) }
    end

  end

end

describe "#get_japanese_emoticon" do

  it "accepts two arguments, the YAML file path and the emoticon" do
    expect { get_japanese_emoticon("./lib/emoticons.yml", ":)") }.to_not raise_error
  end

  it "calls on #load_library and gives it the argument of the file path" do
    emoticon_hash = load_library("./lib/emoticons.yml")

    expect(self).to receive(:load_library).with("./lib/emoticons.yml").and_return(emoticon_hash)
    answer = get_japanese_emoticon("./lib/emoticons.yml", "=D")
  end

  it "returns the Japanese equivalent of an English grinning" do
    expect(get_japanese_emoticon("./lib/emoticons.yml", "=D")).to eq("(￣ー￣)")
  end

  it "returns the Japanese equivalent of an English happy" do
    expect(get_japanese_emoticon("./lib/emoticons.yml", ":)")).to eq("(＾ｖ＾)")
  end

  it "returns the Japanese equivalent of an English sad" do
    expect(get_japanese_emoticon("./lib/emoticons.yml", ":'(")).to eq("(Ｔ▽Ｔ)")
  end

  it "returns an apology message if the argument is not a known emoticon" do
    expect(get_japanese_emoticon("./lib/emoticons.yml", "$#$%{}*")).to eq("Sorry, that emoticon was not found")
  end
  
end

describe "#get_english_meaning" do

  it "accepts two arguments, the YAML file path and the emoticon" do
    expect { get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)") }.to_not raise_error
  end

  it "calls on #load_library and gives it the argument of the file path" do
    emoticon_hash = load_library("./lib/emoticons.yml")

    expect(self).to receive(:load_library).with("./lib/emoticons.yml").and_return(emoticon_hash)
    answer = get_english_meaning("./lib/emoticons.yml", "=D")
  end

  it "returns the Japanese equivalent of an English grinning" do
    expect(get_english_meaning("./lib/emoticons.yml", "(＾ｖ＾)")).to eq("happy")
  end

  it "returns the Japanese equivalent of an English happy" do
    expect(get_english_meaning("./lib/emoticons.yml", "(￣ー￣)")).to eq("grinning")
  end

  it "returns the Japanese equivalent of an English sad" do
    expect(get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")).to eq("sad")
  end

  it "returns an apology message if the argument is not a known emoticon" do
    expect(get_english_meaning("./lib/emoticons.yml", "$#$%{}*")).to eq("Sorry, that emoticon was not found")
  end
  
end