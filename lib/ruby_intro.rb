
# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  
  sorted = arr.sort.reverse
  sorted[0] + sorted[1]
end

def sum_to_n?(arr, n)
  return false if arr.empty?
  return false if arr.length == 1
  
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == n
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  return false if s.empty?
  
  first_char = s[0].downcase
  return false unless first_char.match?(/[a-z]/)
  
  !first_char.match?(/[aeiou]/)
end

def binary_multiple_of_4?(s)
  return false if s.empty?
  return false unless s.match?(/^[01]+$/)
  
  s.end_with?("00") || s == "0"
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be greater than zero" if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end