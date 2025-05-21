def bubble_sort(array)
  i = array.length; j = 1
  while(i > 0) do
    j = 1
    swap_count = 0
    while(j < i) do
      if(array[j - 1] > array[j])
        temp = array[j]
        array[j] = array[j - 1]
        array[j - 1] = temp
        swap_count += 1
      end
      j += 1
    end
    if(swap_count == 0)
      break
    end
    i -= 1
  end
  return array
end