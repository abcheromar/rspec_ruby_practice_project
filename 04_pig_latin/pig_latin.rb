module PigLatin
  
  def translate(englsih)
    constants = %(b c d f g h j k l m n p q r s t v w x y z)
    vowels    = %(a e i o u)
    pig_talk = englsih.split.collect do |word|
    
    if vowels.include?(word[0])
       word = (word[0..-1] + 'ay')                          
    
    elsif word[0..1] == 'qu'
       word = word[2..-1] + word[0..1] + 'ay'

    elsif word[0..2] == 'squ'
       word = word[3..-1] + word[0..2] + 'ay'

    elsif constants.include?(word[0]) & vowels.include?(word[1])
       word =  (word[1..-1] + word[0] + 'ay')

    elsif constants.include?(word[0,1]) & !vowels.include?(word[3])
       word =  (word[2..-1] + word[0,2] + 'ay')   

    elsif constants.include?(word[0,1]) & !vowels.include?(word[2])
       word =  word[3..-1] + word[0..2] + 'ay'

    else
            "Some thing somethin..."
       end
    end
    pig_talk.join(' ')
  end

end



