# HARD: Find the mode (the most frequent integer) in an array of integers
def mode(num_list)
  mode_nums, num_count = Array.new, Hash.new
  num_list.each { |n| num_count[n] = (num_count[n] || 0) + 1 }
  num_count.each do |n, count|
    mode_nums << n if count == num_count.values.max
  end
  return mode_nums.first if mode_nums.length == 1 else mode_nums
end

# Driver code
p mode([2, 4, 5, 2]) # should be 2
p mode([3, 4, 2, 4, 5, 2]) # should be [4, 2]
p mode([3, 4, 2, 1]) # should be [3, 4, 2, 1]
