# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum=0
  arr.each do |num|
  	sum+= num
  end
 return sum
end

def max_2_sum(arr)
  sum=0
  arr.sort! {|x, y| y <=> x}
  if arr.length==0 
  elsif arr.length==1
  	sum=arr[0]
  else
    sum=arr[0]+arr[1]
  end
 return sum
end

def sum_to_n?(arr, n)
	return false if arr.length==0 || arr.length==1
	arr.combination(2).any? {|a, b| a + b == n }  
end

# Part 2

def hello(name)
  "Hello, #{name}" 
end

def starts_with_consonant?(s)
  if s.empty?
    return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
