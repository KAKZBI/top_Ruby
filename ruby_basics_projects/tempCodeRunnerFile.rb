# def substrings(string, dictionary)
 

#    #  dictionary.select{|substring| string.downcase.include?(substring.downcase)}
#    #  .reduce(Hash.new(0)) do |hash, substring|
#    #     hash[substring] += 1
#    #     hash
#    # end
# end
hash = {}
string = "Howdy partner, sit down! How's it going?"

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
arr = dictionary.select{|substring| string.downcase.include?(substring.downcase)}
arr.each do |key|
   hash[key] = 0
end
arr.each do |substring|
   value = string.downcase.split.select{|word| word.include?(substring)}.length
   hash[substring] = value
end
p hash
# p substrings("below", dictionary)
# p substrings("Howdy partner, sit down! How's it going?", dictionary)
