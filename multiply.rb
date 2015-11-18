# Write a method that multiplies two positive integers without using *
def multiply(n1, n2)
  return 0 if n1 == 0 || n2 == 0
  product = 0
  while n1 > 0
    product += n2
    n1 -= 1
  end
  product
end

# Driver code
p multiply(3, 4) # should be 12
p multiply(0, 2) # should be 0
p multiply(1, 9) # should be 9
