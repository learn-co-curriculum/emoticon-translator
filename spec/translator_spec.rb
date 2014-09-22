describe "#load_library" do

  it "accepts one argument, the file path" do
    expect { load_library("./lib/emoticons.yml") }.to_not raise_error
  end

  it "returns a hash" do
    emoticon_hash = load_library("./lib/emoticons.yml")
    expect(emoticon_hash.class).to eq(Hash)
  end

end

describe "#translate" do

  it "accepts one argument" do
    expect { translate(":)") }.to_not raise_error
  end

  it "returns the Japanese equivalent of an English grinning" do
    expect(translate("=D")).to eq("(￣ー￣)")
  end

  it "returns the Japanese equivalent of an English happy" do
    expect(translate(":)")).to eq("(＾ｖ＾)")
  end

  it "returns the Japanese equivalent of an English sad" do
    expect(translate(":'(")).to eq("(Ｔ▽Ｔ)")
  end

  it "returns an apology message if the argument is not a known emoticon" do
    expect(translate("$#$%{}*")).to eq("Sorry, that emoticon was not found")
  end
  
end
