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


# Further Exploration
# Our solution prints the names from first (Sally) to last (Henry).
# Can you change this to print the names from last to first?
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end
