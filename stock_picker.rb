def stock_picker(array)
  minsofar = array[0]
  minindex = -1
  minsofarindex = 0
  maxindex = -1
  max = 0
  (1...array.length).each do |i|
    temp = [minsofar, array[i]].min
    if temp != minsofar
      minsofar = temp
      minsofarindex = i
    end
    temp = [max, array[i] - minsofar].max
    next unless max != temp

    minindex = minsofarindex
    max = temp
    maxindex = i
  end
  puts max
  [minindex, maxindex]
end
