def stock_picker(array)
  minsofar = array[0]; minindex = 0; minsofarindex = 0; maxindex = array.last; max = -99999
  for i in 1...array.length
    temp = [minsofar, array[i]].min
    if(temp != minsofar)
      minsofar = temp
      minsofarindex = i
    end
    temp = [max, array[i] - minsofar].max
    if(max != temp)
      minindex = minsofarindex
      max = temp
      maxindex = i
    end
  end
  puts max
  return [minindex, maxindex]
end