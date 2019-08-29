# Method. Map.
def map(array)
  
  new_array = []
  i = 0 
  
  while i < array.length do
    new_array << yield(array[i])
    i += 1
  end
  
  new_array
  
end


# Method. Reduce.
def reduce(elements, starting_point = nil, &block)
  if starting_point.nil?
    elements.reduce(&block)
  else
    elements.reduce(starting_point, &block)
  end
end
