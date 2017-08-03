### Use bubble-sort algorithm to sort an array and count the swaps.

arr = [2, 1, 0, 1, 2, -1]
changes = true
swaps = 0
until changes == false
  changes = false
  arr.each_with_index do | ele, i |
    if arr[i+1] != nil && arr[i+1] < arr[i]
      n = arr[i]
      arr.delete_at(i)
      arr.insert(i+1, n)
      changes = true
      swaps += 1
    end
  end
end

puts "Array is sorted in #{swaps} swaps."
puts "First element: #{arr.first}"
puts "Last element: #{arr.last}"