class Temperature
  attr_reader :c, :f

  def initialize(options = {})
    @c = options[:c]
    @f = options[:f]
    @c = Temperature.ftoc(@f) if @f
    @f = Temperature.ctof(@c) if @c
  end

  def in_celsius
    return @c
  end

  def in_fahrenheit
    return @f
  end
   
  class << self
   def from_fahrenheit(f)
     Temperature.new(f: f)
   end
  end
  
  class << self
   def from_celsius(c)
    Temperature.new(:c => c)
  end
  end

  class << self
   def ftoc f
    (f.to_f - 32) * (100.00/180.00)
   end
  end

 class << self
  def ctof c
   (c.to_f() * 180.00/100.00) + 32
  end
 end
end


class Fahrenheit < Temperature
 def initialize(t)
    super({f: t})
  end
end

class Celsius < Temperature
  def initialize(t)
    super({c: t})
  end
end