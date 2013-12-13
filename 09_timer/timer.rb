
class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string()

    reminder = (@seconds / 60)
    second   = (@seconds % 60) 
    minute   = (reminder % 60) 
    hour     = (reminder / 60) 
    
   
    second.between?(0,10)  ? second = "0#{second}" : second
    minute.between?(0,10)  ? minute = "0#{minute}" : minute 
    hour.between?(0,10)    ? hour   = "0#{hour}"   : hour 
  
     return "#{hour}:#{minute}:#{second}"

 



  end
  
end