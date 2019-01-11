require "caesar"

describe "#caesar" do

  it "works with a single letter" do
    s = caesar("A", 1)
    expect(s).to eq("B")
  end

  it "works with words" do
    s = caesar("Aaa", 1)
    expect(s).to eq("Bbb")
  end

  it "wraps" do
    s = caesar("Z", 1)
    expect(s).to eq("A")
  end

  it "works with phrases" do
    s = caesar("Hello, World!", 5)
    expect(s).to eq("Mjqqt, Btwqi!")
  end

  it "works with negative shift" do
    s = caesar("Mjqqt, Btwqi!", -5)
    expect(s).to eq("Hello, World!")
  end

  it "works with a large shift" do
    s = caesar("Hello, World!", 75)
    expect(s).to eq("Ebiil, Tloia!")
  end

  it "works with a large negative shift" do
    s = caesar("Hello, World!", -29)
    expect(s).to eq("Ebiil, Tloia!")
  end

end