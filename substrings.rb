
def substrings(word, strings)

  strings.reduce(Hash.new(0)) do |result, sub_str|
    count = word.downcase.scan(/(?=#{sub_str})/).count
    result[sub_str] = count if count > 0
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)

p substrings("How's howdy", dictionary)
