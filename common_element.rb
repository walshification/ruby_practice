# Find the common element between two arrays.
def common_element(a_1, a_2)
  a_1.each do |el|
    return el if a_2.include?(el)
  end
  nil
end

# Driver code
p common_element([2, 3, 2], [1, 9, 3]) # should be 3
p common_element(["a", "fs"], ["s", "f", "a"]) # should be "a"
p common_element([2, 1], [32, 21, 3]) # should be nil
