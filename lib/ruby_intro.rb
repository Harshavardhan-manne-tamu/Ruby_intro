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
  str = "Hello, "
  return (str += name)
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if (string.length() == 0)
    return false
  end

  firstch = string.chr
  firstch = firstch.downcase
  if(firstch == "a" || firstch == "e" || firstch == "i" || firstch == "o" || firstch == "u" )
    return false
  else 
    return true
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if (string.length() == 0 || string.length() == 1 || string.length() == 2)
    return false
  end

  if ((string.to_i(2))%4==0) 
    return true
  else 
    return false
  end
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
#object = BookInStock.new("2",3.82)
#puts(object.price_as_string())
#puts(hello("Harsha"))
#puts(starts_with_consonant?("Harsha"))
#puts(binary_multiple_of_4?("10a1"))