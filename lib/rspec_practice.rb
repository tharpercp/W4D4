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

class TowersOfHanoi

    def initialize
        @stack = [[3, 2, 1], [], []]
    end

    def move
        begin
            puts "Please enter take and place, separated by a comma 0,1:"
            input = self.get_move
            take, place = input
        rescue ArgumentError
            p "invalid input"
            retry
        else
            @stack[place] << @stack[take].pop
            p @stack
        end
    end

    def play
        until won?
            self.move
        end
    end

    def won?
        @stack == [[],[],[3, 2, 1]]
    end

    def get_move
        input = gets.chomp.split(",").map(&:to_i)
        take, place = input
        raise ArgumentError if !take.between?(0, 2) || !place.between?(0, 2)
        raise ArgumentError if @stack[take].empty?
        raise ArgumentError if !input.length == 2
        raise ArgumentError if (!@stack[take].empty? && !@stack[place].empty?) && (@stack[take].last > @stack[place].last)
    end


    attr_accessor :stack
end

game = TowersOfHanoi.new
game.play