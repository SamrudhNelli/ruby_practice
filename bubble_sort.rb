def bubble_sort(array)
  i = array.length
  j = 1
  while i.positive?
    j = 1
    swap_count = 0
    while j < i
      if array[j - 1] > array[j]
        temp = array[j]
        array[j] = array[j - 1]
        array[j - 1] = temp
        swap_count += 1
      end
      j += 1
    end
    break if swap_count.zero?

    i -= 1
  end
  array
end
