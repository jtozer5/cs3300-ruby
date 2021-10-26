# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  temp = arr.max(2)
  temp.sum
end

def sum_to_n? arr, n
  if arr.length > 1 and arr.combination(2).find{|x,y| x+y==n}
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if s.is_a? String and s.length > 0
    return (s =~ /[aeiouAEIOU]/) != 0
  else
    return false
  end
end


def binary_multiple_of_4? s
  if s.to_i !~ /[\b[01]+\b]/
    n = s.to_i(2)
    if n % 4 == 0
      true
    else
      false
    end
  elsif s.length == 0
    print('The empty string is not a valid binary number!')
  else
    print(s + ' is not a valid binary number!')
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)

  raise ArgumentError.new(
    "ISBN cannot be an empty string."
  ) if isbn == ''

  raise ArgumentError.new(
    "Price cannot be less than or equal to 0."
  ) if price <= 0

  @isbn = isbn
  @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    '$%.2f' % price
  end

end
