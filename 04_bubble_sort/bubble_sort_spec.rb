require "bubble_sort"

describe "#bubble_sort" do

    it "works for a small array" do
        a = bubble_sort([3, 2, 1])
        expect(a).to eq([1, 2, 3])
    end

    it "works for a small array of letters" do
        a = bubble_sort(["b", "c", "a"])
        expect(a).to eq(["a", "b", "c"])
    end

    it "works for a larger array" do
        a = bubble_sort([4,3,78,2,0,2])
        expect(a).to eq([0,2,2,3,4,78])
    end

end

describe "#bubble_sort_by" do
    it "works for a small array" do
        a = bubble_sort_by(["hey", "hello", "hi"]) do |left, right|
            left.length - right.length
        end
        expect(a).to eq(["hi", "hey", "hello"])
    end

    it "works for a large array" do
        a = bubble_sort_by(["apples", "pears", "pineapples", "bananas", "grapes"]) do |left, right|
            right.length - left.length
        end
        expect(a).to eq(["pineapples", "bananas", "apples", "grapes", "pears"])
    end
end