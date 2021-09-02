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

        it "returns a 2D array sorted dictionary-wise" do
            expect(sum_arr.two_sum).to start_with([0, 4])
        end
    end

    describe "#my_transpose" do
        subject(:t_arr) { t_arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
        it "converts a 2D array so that each column becomes a new array" do
            expect(t_arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    describe "#stock_picker" do 
        subject(:stock_arr) { stock_arr = [18.0, 12.5, 15.5, 13.5, 10.0, 17.0]}
        it "outputs the most profitable pair of days on which to buy and sell the stock" do
            expect(stock_arr.stock_picker).to eq([10.0, 17.0])
        end
    end
end

describe TowersOfHanoi do
    subject(:stack1) { TowersOfHanoi.new }
    describe "#initialize" do
        it "correctly instantiates the stack" do
            expect(TowersOfHanoi.new.stack).to eq([[3, 2, 1], [], []])
        end
    end

    describe "#move" do
        subject(:stack2) { TowersOfHanoi.new }
        
        it "throws an error if user incorrectly places a disc" do
            stack2.stack = [[3, 2], [1], []]
            expect { stack2.move(0, 3) }.to raise_error("Can't place it there.")
            expect { stack2.move(0, 1) }.to raise_error("Can't place it there.")
            expect { stack2.move(2, 0) }.to raise_error("Can't place it there.")
        end

        it "correctly places the disc" do
            stack2.stack = [[3, 2, 1], [], []]
            stack2.move(0, 1)
            expect(stack2.stack).to eq([[3, 2], [1], []])
        end

        it "ends the game when the last peg has been filled correctly" do
            stack2.stack = [[], [], [3, 2, 1]]
            expect(stack2.won?).to eq(true)
        end
    end
end