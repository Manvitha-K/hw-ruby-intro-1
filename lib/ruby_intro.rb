# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  sum=0;
  arr.each do |val|
    sum+=val
  end
  return sum
   #arr.inject(0, :+)
end

def max_2_sum arr
  max_sum = 0;
  len = arr.length
  if len==1
    #max_sum +=arr[0]
    return arr[0]
  elsif len >= 2
    max_sum = arr[0]+arr[1]
    i=1
    while i < len-1
        two_sum = arr[i]+arr[i+1]
        if two_sum > max_sum
          max_sum = two_sum
        end
        i=i+1
    end
  end
  return max_sum
end


def sum_to_n? arr, n
 len = arr.length
  #print "len " , len
  #print "n ", n
  if len ==0 or len==1
    return false
  else
    i =0;
    while i < len-1
      j = i+1
      while j < len
      #print "sum ", arr[i] + arr[j], "\n"
        if arr[i] + arr[j] == n
          return true;
        end
        j = j+1
      end
      i = i+1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if !(s.is_a? String)
    return false
  end
  
  if s.strip.empty?
    return false
  end
  
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else 
    return false
  end
end


def binary_multiple_of_4? s
  if s !~ /^[0-1]/
    return false
  else
     if (s.to_i)%4==0
       return true
     end
     return false
  end
     
end

# Part 3

class BookInStock
   attr_reader :isbn, :price

  def initialize(isbn,price)
    if !isbn.empty?
      @isbn = isbn
    else
      raise ArgumentError, 'Invalid ISBN number'
    end
    
    if price <=0
      raise ArgumentError, 'Invalid price'
    else
      @price = price
    end
  end

  def price_as_string
    return '$''%.2f' % @price
  end

  def isbn=(isb)               
    @isbn = isb
  end

  def price=(pri)
    @price = pri
  end

end