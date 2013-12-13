class Book
  attr_reader :title

  def title=(title)
    expt = %w{a an in of the and}
    words = title.split(' ')
    words.collect do |word|
    word.capitalize! if !expt.include?(word) || word == words[0]          
  
    end
    
   @title = words.join(' ')
 
 end

end