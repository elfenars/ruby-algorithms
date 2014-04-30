a = (1..9999).to_a.sample(20)

def bubble_sort list
  puts "Original list: #{list}"
  list.each_index do |i|
    ( (list.size-1)-i ).times do |j|
      list[j], list[j+1] = list[j+1], list[j] if list[j] > list[j+1] # Do the swap
    end
  end
  puts "Ordered list: #{list}"
end

bubble_sort(a)