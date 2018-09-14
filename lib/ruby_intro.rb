# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0) {|sum, value| sum + value}
end

def max_2_sum arr
  # YOUR CODE HERE
  #if arr.empty? then return 0 end
  #if arr.length == 1 then return arr[0] end
  return arr.max(2).inject(0) {|sum, value| sum + value}
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = Hash.new
  arr.each do |val|
    if hash.key?(val)
      return true
    else 
      hash[n - val] = val
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[bcdfghj-np-tv-z]/i 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # the last two digits can't be '1'
  if s =='0' then return true end
  s =~ /^[01]*1[01]*00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.size == 0 then raise ArgumentError end
    if price<=0 then raise ArgumentError end
    @isbn = isbn
    @price = price
  end
  
  def isbn
      @isbn
  end
 
  def price
      @price
  end
   
  def isbn=(value)
    @isbn = value
  end 
  
  def price=(value)
    @price = value
  end 
  
  def price_as_string
    s = sprintf("%#.2f", @price)
    return "$#{s}"
  end
end
