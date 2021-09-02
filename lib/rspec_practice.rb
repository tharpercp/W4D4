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


end