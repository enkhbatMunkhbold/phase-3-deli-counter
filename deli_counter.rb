def line queue
  if queue.length == 0
    puts "The line is currently empty."
  else
    str = "The line is currently:"
    queue.each_with_index do |customer, index|
      str << " #{index + 1}. #{customer}"
    end
    puts str
  end   
end

def take_a_number (queue, customer)
  queue << customer
  puts "Welcome, #{customer}. You are number #{queue.length} in line."
end

def now_serving queue
  if queue.length == 0
    puts "There is nobody waiting to be served!"
  else
    next_customer = queue.shift
    puts "Currently serving #{next_customer}."
  end
end