# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {|i|  sum += i}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty? == true
    0
  elsif arr.size == 1
    arr[0]
  else
    arr.max + arr.sort[arr.size - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.size == 1) || (arr.empty? == true)
    false
  elsif arr.permutation(2).any? {|a, b| a + b == n }
    true
  else 
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[aouieAOIUE*]/.match(s[0])
    false
  elsif (/[0-9*]/.match(s[0])) || (s.empty?)
    false
  elsif /^\#/.match(s[0])
    false
  else
    true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError,
    "Illegal argument" if isbn.empty?  or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string 
    sprintf("$%2.2f", @price)
  end


end
