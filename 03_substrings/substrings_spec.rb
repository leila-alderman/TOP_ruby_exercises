require "substrings"

describe "#count" do

  it "works for a single word" do
    s = count("cat", ["cat", "rat", "rabbit", "cat", "dog", "bird", "cat"])
    expect(s).to eq({ "cat" => 3})
  end

  it "works for multiple words" do
    s = count("cat and dog", ["cat", "rat", "rabbit", "cat", "dog", "bird", "cat"])
    expect(s).to eq({"cat" => 3, "dog"=> 1})
  end

  it "can find substrings" do
    s = count("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
    expect(s).to eq({"below" => 1, "low" => 1 })
  end

  it "works for a long phrase" do
    s = count("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
    expect(s).to eq({"down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1})
  end

end