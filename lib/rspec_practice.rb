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