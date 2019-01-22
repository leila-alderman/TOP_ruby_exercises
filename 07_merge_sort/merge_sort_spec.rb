require "merge_sort"

describe "#merge_sort" do

    it "works for a small array" do
        a = merge_sort([3, 2, 4, 1])
        expect(a).to eq([1, 2, 3, 4])
    end

    it "works for a small array of letters" do
        a = merge_sort(["b", "c", "a"])
        expect(a).to eq(["a", "b", "c"])
    end

    it "works for a larger array" do
        a = merge_sort([4,3,78,2,0,2])
        expect(a).to eq([0,2,2,3,4,78])
    end

end