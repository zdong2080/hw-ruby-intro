# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # check if the integer array is empty
  if arr.length < 1
    return 0
  end
  
  # add elements in array to res
  res = 0
  # loop inside this array
  for ele in arr do
    res += ele
  end
  
  return res
end

def max_2_sum arr
  # check if the integer array is empty
  if arr.length < 1
    return 0
  end
  
  # check if the integer array only has one element
  if arr.length == 1
    return arr[0]
  end
  
  # get two max elements from array and add them
  res = 0
  twoArr = arr.max(2)
  for ele in twoArr
    res += ele
  end
  
  return res
end

def sum_to_n? arr, n
  # check if the integer array is empty
  if arr.length < 1
    return false
  end
  
  # check if the integer array has one element
  if arr.length == 1
    return false
  end
  
  # get the combination of all pairs inside the array
  return arr.combination(2).any?{|a, b| a + b == n }
end

# Part 2

def hello(name)
  # printing hello and name
  res = ("Hello, " + name)
  return res
end

def starts_with_consonant? s
  # check if the string is empty
  if s.length < 1
    return false
  end
  
  # check if the string starts with non-letter
  if s[0].count("a-zA-Z") == 0
    return false
  end

  # return false if include 'a' 'e' 'i' 'o' 'u'
  res = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  if res.include? s[0]
    return false
  end
  
  return true
end

def binary_multiple_of_4? s
  # check if the string is binary
  for ele in 0..s.length-1
    if s[ele] != "1" and s[ele] != "0"
      return false
    end
  end
  
  # if last two elements are both 0, then it is valid multiple of 4
  if s[s.length-1] == '0' and s[s.length-2] == '0'
    return true
  end
  
  return false
end

# Part 3

class BookInStock
  # define variables for this class
  attr_accessor :isbn, :price
  
  # define constructor for this class
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    if @isbn.empty?
      raise ArgumentError
    end
    if @price <= 0
      raise ArgumentError
    end
  end
  
  # define method for this class
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
  
end

