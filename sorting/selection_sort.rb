require 'benchmark'

# We make the list an instance variable so that we can measure the exact function time later, without assigning its result to another var.

@list = (1..9999).to_a.sample(100)
#@list = [1,0,2,9,3,8,7,6,4,5]
puts "Original list: #{@list}"

def selection_sort
  size = @list.size

  (0...size).each do |i|
    value   = @list[i]
    swap_i  = i

    (i+1...size).each do |j|
      value, swap_i = @list[j], j if @list[j] < value
    end

    @list[swap_i] = @list[i]
    @list[i] = value
  end
end



time = Benchmark.realtime do
  selection_sort
end

puts "---"
puts "Ordered list: #{@list}"
puts "---"
puts "Time elapsed was #{time*1000} milliseconds"
