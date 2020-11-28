def substrings(text, dictionary)
  text_array = text.split(" ")
  text_array.map!{|word| word.downcase}
  histogram = Hash.new
  for word in text_array
    for item in dictionary
      if word[item] != nil
        histogram[item] == nil ? histogram[item] = 0
        : histogram[item] += 1
      end
    end
  end
  histogram
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)