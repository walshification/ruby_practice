# Determine if two strings are anagrams (case insensitive)
def anagrams?(s_1, s_2)
  return "Must use two strings" unless s_1.is_a?(String) && s_2.is_a?(String)
  char_counter(s_1) == char_counter(s_2)
end

# Return a hash of characters and their count in a string
def char_counter(string)
  char_count = Hash.new
  string.downcase.split(//).each do |char|
    char_count[char] = (char_count[char] || 0) + 1
  end
  char_count
end

# Driver code
p anagrams?("cinema", "iceman") # should be true
p anagrams?("Cinema", "IceMan") # should be true
p anagrams?("baseball", "ballbass") # should be false
