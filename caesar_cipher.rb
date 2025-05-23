def caesar_cipher(str, num)
  len = str.length
  len.times do |i|
    if str[i].ord.between?(97, 122)
      str[i] = (str[i].ord + num).chr
      str[i] = (str[i].ord - 26).chr if str[i].ord > 122
    elsif str[i].ord.between?(65, 90)
      str[i] = (str[i].ord + num).chr
      str[i] = (str[i].ord - 26).chr if str[i].ord > 90
    end
  end
  str
end
