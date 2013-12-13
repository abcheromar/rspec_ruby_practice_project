class Dictionary
  attr_reader :entries
  def initialize
    @entries ||= {}
  end

  def add(entry)
    if entry.class != Hash
      @entries[entry] = nil
    else 
      entry.each do |key, definition|
        @entries[key] = definition
      end
    end
  end

  def include?(entry)
    @entries.has_key?(entry)
  end

  def keywords
    @entries.keys.sort
  end

 def find(sub)
    found = {}
    entries.each_pair do |key, definition|
    found[key] = definition if key =~ /^#{sub}/
      end
    found
 end

 def printable()
    clean = ''
    @entries.sort.each do |key, definition|
    clean += "[#{key}] \"#{definition}\"\n"
      end
    clean.strip
  end

  
end
