def substrings(string, dictionary)
  str_arr = string.split(' ')
  count = Hash.new(0)
  dictionary.each do |chars|
    str_arr.each do |word|
      if word.downcase.include?(chars.downcase)
        count[chars] += 1
      end
    end
  end

  count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
