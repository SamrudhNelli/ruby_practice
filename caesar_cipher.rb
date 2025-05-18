def caesar_cipher(str, num)
  len = str.length
  len.times do |i|
    if(str[i].ord.between?(97,122))
      str[i] = (str[i].ord + num).chr
      if(str[i].ord > 122)
        str[i] = (str[i].ord - 26).chr
      end
    elsif(str[i].ord.between?(65,90))
      str[i] = (str[i].ord + num).chr
      if(str[i].ord > 90)
        str[i] = (str[i].ord - 26).chr
      end
    end
  end
  return str
end