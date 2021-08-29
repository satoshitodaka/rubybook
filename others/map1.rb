results = [1, 2, 3]
p results.object_id
results2 = results.map do |x|
  x * 2
end
p results2
p results2.object_id