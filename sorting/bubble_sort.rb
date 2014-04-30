require 'benchmark'

# We make the list an instance variable so that we can measure the exact function time later, without assigning its result to another var.

@list = (1..9999).to_a.sample(100)
puts "Original list: #{@list}"

def bubble_sort
  @list.each_index do |i|
    ( (@list.size-1)-i ).times do |j|
      @list[j], @list[j+1] = @list[j+1], @list[j] if @list[j] > @list[j+1] # Do the swap
    end
  end
end



time = Benchmark.realtime do
  bubble_sort
end

puts "---"
puts "Ordered list: #{@list}"
puts "---"
puts "Time elapsed was #{time*1000} milliseconds"
