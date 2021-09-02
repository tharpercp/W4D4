#code goes here

class Array

    def my_uniq
        new_arr = []
        self.each do |num|
            new_arr << num unless new_arr.include?(num)
        end
        new_arr
    end






end