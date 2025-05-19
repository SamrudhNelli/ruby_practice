def substrings(string, dictionary)
  string = string.downcase
  puts string
  count = Array.new; h = Hash.new
  count = dictionary.map do |key|
    i = 0; j = i + key.length; temp = 0
    while j <= string.length do
      if(string[i..j-1].eql?(key))
        temp += 1
      end
      i += 1; j += 1
    end
    count.push(temp)
    if(count.last() > 0)
      h[key] = count.last()
    end
  end
  return h
end