require "fibonacci"

describe "#fibs" do

    it "works for four numbers" do
        a = fibs(4)
        expect(a).to eq([0, 1, 1, 2])
    end

    it "works for six numbers" do
        a = fibs(6)
        expect(a).to eq([0, 1, 1, 2, 3, 5])
    end

    it "works for 20 numbers" do
        a = fibs(20)
        expect(a).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181])
    end
end

describe "#fibs_rec" do

    it "works for four numbers" do
        a = fibs_rec(4)
        expect(a).to eq([0, 1, 1, 2])
    end

    it "works for six numbers" do
        a = fibs_rec(6)
        expect(a).to eq([0, 1, 1, 2, 3, 5])
    end

    it "works for 20 numbers" do
        a = fibs_rec(20)
        expect(a).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181])
    end
end