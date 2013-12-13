def measure(repeat = 1)
	
	time_it_took = 0
    
    repeat.times do
        time_it_began = Time.now
        yield if block_given?
        #block code is run now
       time_it_ended = Time.now
       time_it_took += time_it_ended - time_it_began
  
   end

   time_it_took / repeat

end


