#code goes here

class Array

    def my_uniq
        new_arr = []
        self.each do |num|
            new_arr << num unless new_arr.include?(num)
        end
        new_arr
    end

    def two_sum
        new_arr = []
        self.each_with_index do |num, i|
            missing = 0 - num
            if self.include?(missing)
                new_arr << [i, self.index(missing)] if i < self.index(missing)
            end
        end
        new_arr
    end

    def my_transpose
        self.transpose
    end

    def stock_picker
        max = self[1] - self[0]
        arr = [self[0], self[1]]
        (0...self.length - 1).each do |idx1|
            (idx1 + 1...self.length).each do |idx2|
                stock_return = self[idx2] - self[idx1]
                if stock_return > max
                    max = stock_return
                    arr = [self[idx1], self[idx2]]
                end
            end
        end
        arr
    end
end

class BadPlacementError < StandardError; end

class TowersOfHanoi
    def initialize
        @stack = [[3, 2, 1], [], []]
        @stack
    end

    def move
        puts "Please enter take and place, separated by a comma (0,1):"
        begin
            input = gets.chomp.split(",").map(&:to_i)
            take, place = input
            raise "Can't place there." if @stack[take].last > @stack[place].last
            raise "Out of range." if !take.between?(0, 2) || !place.between?(0, 2)
            raise "Can't take from empty." if @stack[take].empty?
            raise "Incorrect input." if !input.length == 2
        rescue
            retry
        end

        @stack[place] << @stack[take].pop
    end

    attr_accessor :stack
end