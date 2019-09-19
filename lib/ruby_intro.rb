# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sorted_arr = arr.sort
    largest = sorted_arr.pop
    second_largest = sorted_arr.pop
    sum = largest + second_largest
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    largest_index = arr.length - 1
    for i in 0..largest_index do
      pair_index = i + 1
      while pair_index <= largest_index
        first = arr[i]
        second = arr[pair_index]
        sum = first + second
        if sum == n
          return true
        end
        pair_index += 1
      end
    
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  prefix = "Hello, "
  concatenated = prefix + name
  return concatenated
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ''
    return false
  elsif !(s.match(/^[a-z]/i))
    return false
  elsif !(s.match(/^[A,E,I,O,U]/i))
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  elsif s.match(/[^0-1]/)
    return false
  end
  
  decimal = s.to_i(2)
  remainder = decimal % 4
  if remainder == 0
    return true
  else
    false
  end
end

# Part 3

class BookInStock
  
  
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn == ''
      raise ArgumentError, 'Argument is empty string'
    end
    if price <= 0
      raise ArgumentError, 'Agument is not valid'
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  def isbn=(isbn)
    if isbn == ''
      raise ArgumentError, 'Argument is empty string'
    end
    @isbn=isbn
  end
  
  def price=(price)
    if price <= 0
      raise ArgumentError, 'Agument is not valid'
    end
    @price=price
  end
  
  def price_as_string
    two_decimal_places = '%.2f' % @price
    @price = "$"+two_decimal_places
  end
  
end
