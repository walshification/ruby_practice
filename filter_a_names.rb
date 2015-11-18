# Filter an array of names to only contain names that start with the letter "A".
def filter_a_names(name_array)
  a_names = Array.new
  name_array.map { |name| a_names << name if name[0].downcase == 'a' }
  a_names
end

# Driver code
p filter_a_names(["Bob", "Charlie", "Angel"]) # should be ["Angel"]
p filter_a_names(["Bob", "Charlie", "Bangel"]) # should be []
p filter_a_names(["Adam", "Charlie", "Adam"]) # should be ["Adam", "Adam"]
