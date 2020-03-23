# Given the array below, use loop to remove and print each name.
# Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']
id = 0
start_size = names.size

loop do
  puts names[id]
  names.shift
  id += 1
  id == start_size ? break : next
end


# LS solution:
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end
