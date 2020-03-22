# Your friends just showed up! Given the following array of names,
# use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in 0..(friends.length - 1)
  puts "Greetings my beloved #{friends[i]}"
end

# LS solution:
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end