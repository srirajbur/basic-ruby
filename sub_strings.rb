def substrings(text, array)
    hash = {}
    text = text.downcase

    array.select do |word|
        hash[word] = text.scan(word).length if text.include?(word)
    end

    hash
end
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)