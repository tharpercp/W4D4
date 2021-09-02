require "rspec"
require "rspec_practice"


describe Array do
    describe "#my_uniq" do
        subject(:uniq_arr) { uniq_arr = [1, 2, 1, 3, 3] }
        it "returns an array with only unique values" do
            expect(uniq_arr.my_uniq).to eq([1, 2, 3])
        end

        it "returns a new array" do
            expect(uniq_arr.my_uniq).not_to be(uniq_arr)
        end

        it "returns the unique elements in which they first appeared" do
            expect(uniq_arr.my_uniq).to eq([1, 2, 3])
        end
    end

    describe "#two_sum" do
        subject(:sum_arr) { sum_arr = [-1, 0, 2, -2, 1] }
        it "returns pairs of indicies that sum to zero" do
            expect(sum_arr.two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end