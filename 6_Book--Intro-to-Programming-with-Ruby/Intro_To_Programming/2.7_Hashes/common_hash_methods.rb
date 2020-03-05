# has_key?
# Check for a specific key:

name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}

name_and_age.has_key?("Steve")    # =>  true

name_and_age.has_key?("Larry")    # =>  false


# -----------------------------------------------------------

# select

# Pass a block and returns any key-value pairs that evaluate
# to true

name_and_age.select { |k,v| k == "Bob" }  # => {"Bob"=>42}

name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
# => {"Bob"=>42, "Joe"=>19}


# -----------------------------------------------------------

# fetch

# Pass a given key and returns value for that key

name_and_age.fetch("Steve")   # => 31

name_and_age.fetch("Larry")  # => "error msg"

name_and_age.fetch("Larry", "Larry isn't in this hash")
#  => "Larry isn't in this hash"


# -----------------------------------------------------------

# to_a

# Returns hash as an array (non-destructive)

name_and_age.to_a   # => [["Bob" => 42,] ["Steve" => 31], ["Joe" => 19]]


# -----------------------------------------------------------

# keys and values

name_and_age.keys   # =>  ["Bob", "Steve", "Joe"]

name_and_age.values  # => [42, 31, 19]


