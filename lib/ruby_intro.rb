# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if (arr == nil)
   return 0
  end

  sum = 0
  # iterate over all elements & find sum.
  for element in arr do
   sum = sum + element
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if (arr == nil || arr.length() == 0)
   return 0
  end

  if (arr.length() == 1)
   return arr[0]
  end

  return sum(arr.max(2))
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if (arr == nil)
   return false
  end
  
  if (arr.length() == 1 || arr.length() == 0)
   return false
  end

  for i in 0..arr.length()
    for j in i+1..arr.length()
      if (arr[i].to_i + arr[j].to_i) == number
        return true
      end
    end
  end
  return false
end




# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end




# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE

  def initialize(isbn, price)
   raise ArgumentError.new(
    "Argument Error"
   ) if ( (isbn.empty?) || (price <= 0) )
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
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
 
  def price_as_string()
    return ("$"+"%0.2f" % [@price.to_s])
  end

end




#puts(sum([3]))
#puts(max_2_sum([8]))
#puts(sum_to_n?([2,1,5], 4))
#object = BookInStock.new("2",3)
#puts(object.price_as_string())