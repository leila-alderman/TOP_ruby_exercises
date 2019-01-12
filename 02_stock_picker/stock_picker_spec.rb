require "stock_picker"

describe "#picker" do

  it "works for a small ordered array" do
    s = picker([2, 4, 6, 8])
    expect(s).to eq([0, 3])
  end

  it "works for a small unordered array" do
    s = picker([10, 2, 8, 6, 4])
    expect(s).to eq([1, 2])
  end

  it "works for a large array" do
    s = picker([17,3,6,9,15,8,6,1,10])
    expect(s).to eq([1,4])
  end

  it "handles multiple maximums" do
    s = picker([15, 10, 4, 10, 15])
    expect(s).to eq([2, 4])
  end

  it "handles minimum at the end" do
    s = picker([4, 6, 8, 1])
    expect(s). to eq([0,2])
  end

end