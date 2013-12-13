def reverser()
   string = yield.split().collect{|n| n.reverse}
   string.join(' ')
end


def adder(number = 1)
  return yield + number
end


def repeater(number = 1)
   for number in 0...number
     yield
   end
end

