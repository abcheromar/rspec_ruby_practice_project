def echo(greeting)
 greeting
end

def shout(shout)
	shout.upcase
end

def repeat(hello, rep = 2)
return (" #{hello}" * rep).strip
end

def start_of_word(word, sub_len = 0)
    if sub_len > word.length
        "Too long"
    else 
        new_word = word[0...sub_len]
    end
end

def first_word(words)
    new_words = words.split()
    new_words[0]
end

def titleize(string)
    
  words = string.split()
  words.collect do |word|
     word.capitalize! if words.first == word || !['the', 'and', 'over'].include?(word)
    end
  
 words.join(" ")

end

