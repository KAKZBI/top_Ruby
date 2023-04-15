def substrings(string, dictionary)
    hash = {} 
    #Create an array containing valid substrings
    arr = dictionary.select{|substring| string.downcase.include?(substring.downcase)}
    #Foe each valid string make it a key in our hash and as value give it the number of times it appear in our string
    arr.each do |substring|
        value = string.downcase.split.select{|word| word.include?(substring)}.length
        hash[substring] = value
    end
    return hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
