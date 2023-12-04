def substrings(string, dictionary)
    hash = {} 
    #Create an array containing valid substrings
    valid_substrings = dictionary.select{|substring| string.downcase.include?(substring.downcase)}
    # p valid_substrings, string.split
    #For each valid string make it a key in our hash and as value give it the 
    # number of times it appear in our string
    valid_substrings.each do |substring|
        substring_occurences = string.downcase.split.select{|word| word.include?(substring)}.length
        hash[substring] = substring_occurences
    end
    return hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
