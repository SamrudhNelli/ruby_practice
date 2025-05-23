def substrings(string, dictionary)
  string = string.downcase
  puts string
  count = []
  h = {}
  count = dictionary.map do |key|
    i = 0
    j = i + key.length
    temp = 0
    while j <= string.length
      temp += 1 if string[i..j - 1].eql?(key)
      i += 1
      j += 1
    end
    count.push(temp)
    h[key] = count.last if count.last.positive?
  end
  h
end
