describe "#load_library" do

  it "accepts one argument, the file path" do
    expect { load_library("./lib/emoticons.yml") }.to_not raise_error
  end

  it "returns a hash" do
    emoticon_hash = load_library("./lib/emoticons.yml")
    expect(emoticon_hash.class).to eq(Hash)
  end

end

describe "#get_japanese_emoticon" do

  it "accepts one argument" do
    expect { get_japanese_emoticon(":)") }.to_not raise_error
  end

  it "returns the Japanese equivalent of an English grinning" do
    expect(get_japanese_emoticon("=D")).to eq("(￣ー￣)")
  end

  it "returns the Japanese equivalent of an English happy" do
    expect(get_japanese_emoticon(":)")).to eq("(＾ｖ＾)")
  end

  it "returns the Japanese equivalent of an English sad" do
    expect(get_japanese_emoticon(":'(")).to eq("(Ｔ▽Ｔ)")
  end

  it "returns an apology message if the argument is not a known emoticon" do
    expect(get_japanese_emoticon("$#$%{}*")).to eq("Sorry, that emoticon was not found")
  end
  
end

describe "#get_english_meaning" do

  it "accepts one argument" do
    expect { get_english_meaning("(Ｔ▽Ｔ)") }.to_not raise_error
  end

  it "returns the Japanese equivalent of an English grinning" do
    expect(get_english_meaning("(＾ｖ＾)")).to eq("happy")
  end

  it "returns the Japanese equivalent of an English happy" do
    expect(get_english_meaning("(￣ー￣)")).to eq("grinning")
  end

  it "returns the Japanese equivalent of an English sad" do
    expect(get_english_meaning("(Ｔ▽Ｔ)")).to eq("sad")
  end

  it "returns an apology message if the argument is not a known emoticon" do
    expect(get_english_meaning("$#$%{}*")).to eq("Sorry, that emoticon was not found")
  end
  
end