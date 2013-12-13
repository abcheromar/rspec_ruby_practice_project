def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(arr_var)
  arr_sum = 0
  arr_var.each do |i|
    arr_sum += i
  end
  
  arr_sum
end


def multiply(*arr_num)
   result = 1
   arr_num.each do |i|
   result *= i 
   end
   
   result
end


def power(a,b)
    a**b
end

def factorial(num)
    if num == 1 || num == 0
        1
    elsif num > 1
        num * factorial(num-1)
    else
        "Give a postive number"
    end
end




