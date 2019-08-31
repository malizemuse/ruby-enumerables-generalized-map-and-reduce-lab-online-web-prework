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

<<<<<<< HEAD

# Method. Reduce.
def reduce(elements, starting_point = nil, &block)
  if starting_point.nil?
    elements.reduce(&block)
  else
    elements.reduce(starting_point, &block)
  end
end
=======
# Method. Reduce. V1.
def reduce(source_array, starting_point = 0)

  total = starting_point
  i = 0
  
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end

  total

end


# Method. Reduce. V2.
def reduce(source_array)

  reduce_value = true
  i = 0 
  
  while i < source_array.length do
    
    reduce_value = yield(reduce_value, source_array[i])
    
    i += 1
    
  end

  reduce_value  

end


=begin

describe 'my own reduce' do
  it "returns a running total when not given a starting point" do
    source_array = [1,2,3]
    expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
  end

  it "returns a running total when given a starting point" do
    source_array = [1,2,3]
    starting_point = 100
    expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
  end

  it "returns true when all values are truthy" do
    source_array = [1, 2, true, "razmatazz"]
    expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
  end

  it "returns false when any value is false" do
    source_array = [1, 2, true, "razmatazz", false]
    expect(reduce(source_array){|memo, n| memo && n}).to be_falsy
  end

  it "returns true when a truthy value is present" do
    source_array = [ false, nil, nil, nil, true]
    expect(reduce(source_array){|memo, n| memo || n}).to eq(true)
  end

  it "returns false when no truthy value is present" do
    source_array = [ false, nil, nil, nil]
    expect(reduce(source_array){|memo, n| memo && n}).to eq(false)
  end
end

=end

>>>>>>> 15edd2ba2890f7bf126e887c35d024fb08c25a7f
