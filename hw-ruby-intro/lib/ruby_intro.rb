# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if arr.empty?
    sum
  else
    arr.each{|a| sum+=a}
  sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.count == 1
    arr[0]
  else
    arr.sort! {|a, b| b <=> a}
    arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?                
  return true if arr.empty? && n.zero?     
  arr.combination(2).any? {|a, b| a + b == n }  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
   "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i? true:false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  (s =~ /^[01]+$/) == 0 && (s == '0' || (s =~ /00$/)) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @price == '' || @price <= 0
      raise ArgumentError.new('Must have a price')
    end
    if @isbn == '' || @isbn == nil
      raise ArgumentError.new('ISBN cannot be null')
    end
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
