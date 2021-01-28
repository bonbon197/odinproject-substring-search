# substrings

# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

# References, because I can't figure this one on my own for the life of me
# "The top answer right now to this assignment"
# https://apidock.com/ruby/Array/count
# https://ruby-doc.org/core-2.5.0/Regexp.html
# https://ruby-doc.org/core-2.1.0/String.html#method-i-scan

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
    word_count = {}
    dictionary.each do |word|
        word_count[word] = phrase.downcase.scan(/(?=#{word})/).count if phrase.downcase.include?(word)
    end
    word_count
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)