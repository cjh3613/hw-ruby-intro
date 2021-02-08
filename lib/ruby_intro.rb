# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    return arr.sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length <= 1
    return false
  else
    update_set = Set.new
    for number in arr do
      remain = n - number
      if update_set.include?(remain)
        return true
      end
      update_set.add(number)
    end
    return false
  end
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  vowels.each do |uncon|
    if s[0] == uncon
      return false
    end
  end
  if s[0].between?('A','z')
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  s.split("").each do |character|
    if !(character == '1') && !(character == '0')
      return false
    end
  end
  number = s.to_i(2) % 4
  if(number == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length == 0 || price <=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def isbn
    @isbn
  end

  def price=(price)
    @price = price
  end

  def price
    @price
  end

  def price_as_string
    "$"+ "%.2f" % @price
  end
end