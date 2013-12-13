class RPNCalculator
  
  attr_reader :stack
  
  def initialize
    @stack = [0] 
  end
  
  def push(number)
    return stack << number.to_f
  end

  
  def value
    return stack.last
  end

  def plus
    element1,element2 = stack.pop, stack.pop
    raise "calculator is empty" if element1.nil? or element2.nil?
    stack.push(element1 + element2)
  end

  def minus

    element1,element2 = stack.pop, stack.pop
    raise "calculator is empty" if element1.nil? or element2.nil?
    stack.push(element2 - element1)
  end

  def times
    element1,element2 = stack.pop, stack.pop
    raise "calculator is empty" if element1.nil? or element2.nil?
    stack.push(element1 * element2)
  end

  def divide
    element1,element2 = stack.pop, stack.pop
    raise "calculator is empty" if element1.nil? or element2.nil?
    stack.push(element2 / element1)
  end

 
end
