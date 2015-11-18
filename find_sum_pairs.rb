# HARD: Find all the pairs in an array that sum up to a given number.
def find_sum_pairs(numbers, sum)
  pairs = Array.new
  num_copy = Array.new
  numbers.each { |n| num_copy << n }
  numbers.each do |n|
    num_copy.map do |n2|
      if n + n2 == sum && n != n2
        pair = Array.new
        if n > n2
          pair = [n2, n]
        else
          pair = [n, n2]
        end
        pairs << pair
      end
    end
  end
  pairs.uniq
end

# Driver code
p find_sum_pairs([0, 1, 2, 3, 4, 5], 8) # should be [[3, 5]]
p find_sum_pairs([0, 1, 2, 3, 4, 5], 4) # should be [[0, 4], [1, 3]]
p find_sum_pairs([0, 1, 2, 3, 4, 5], 0) # should be []
