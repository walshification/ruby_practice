# Calculate the average (mean) of an array of numbers.
def average(number_list)
  number_list.inject(:+).to_f / number_list.length
end

# Driver code
p average([3, 2, 1]) # should be 2
p average([8, 9]) # should be 8.5
p average([1, 1, 1, 2]) # should be 1.25
