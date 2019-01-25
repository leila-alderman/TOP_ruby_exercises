require "enumerables"

describe Enumerable do

    describe "#my_each" do
        it "can step through an array" do
            final = []
            [2, 3, 4, 5].my_each { |num| final.push(num*2)}
            expect(final).to eq([4, 6, 8, 10])
        end
    end

    describe "#my_each_with_index" do
        it "can selectively step through an array" do
            final = []
            [2, 3, 4, 5].my_each_with_index { |num, i| final.push(num*2) if i % 2 == 0 }
            expect(final).to eq([4, 8])
        end
    end
    
    describe "#my_select" do
        it "can select even numbers" do
            expect([2, 3, 4, 5].my_select { |num| num % 2 == 0 }).to eq([2, 4])
        end

        it "can select words" do
            expect(["apple", "banana", "agave", "kiwi"].my_select { |word| word[0] == "a"}).to eq(["apple", "agave"])
        end
    end

    describe "#my_all?" do
        it "can return true" do
            expect([2, 4, 6, 8].my_all? { |num| num % 2 == 0 }).to eq(true)
        end

        it "can return false" do
            expect([2, 3, 6, 8].my_all? { |num| num % 2 == 0 }).to eq(false)
        end
    end

    describe "#my_any?" do
        it "can return true" do
            expect([2, 3, 7, 9].my_any? { |num| num % 2 == 0 }).to eq(true)
        end

        it "can return false" do
            expect([2, 4, 6, 8].my_any? { |num| num % 2 == 1 }).to eq(false)
        end
    end

    describe "#my_none?" do
        it "can return true" do
            expect([3, 5, 7, 9].my_none? { |num| num % 2 == 0 }).to eq(true)
        end

        it "can return false" do
            expect([2, 3, 6, 8].my_none? { |num| num % 2 == 0 }).to eq(false)
        end
    end

    describe "#my_count" do
        it "works for a small array" do
            expect([2, 3, 4, 5].my_count).to eq(4)
        end

        it "works for a large array" do
            expect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].my_count).to eq(10)
        end
    end

    describe "#my_map" do
        it "works with a block" do
            expect([2, 3, 4, 5].my_map { |num| num * 2 }).to eql([4, 6, 8, 10])
        end

        it "works with a proc" do
            double_proc = Proc.new { |num| num * 2}
            expect([2, 3, 4, 5].my_map(&double_proc)).to eql([4, 6, 8, 10])
        end
    end

    describe "#my_inject" do
        it "works with addition" do
            expect([5, 6, 7, 8, 9, 10].my_inject { |sum, n| sum + n }).to eql(45)
        end

        it "works with multiplication" do
            expect([5, 6, 7, 8, 9, 10].my_inject(1) { |product, n| product * n }).to eql(151200)
        end
    end

end