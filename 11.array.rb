#!/usr/bin/ruby


games = ["1", "2", "3"]

puts games
games.each { |x|
	puts x
}

games.each_with_index { |i, elem|
	puts i, elem
}

puts games.join("-")

# 判断是否是一个数组
if games.respond_to?("each")
	puts "games is array"
end

%w(one two three four).each { |x|
	p x
}
%w(1 2 3).each do |x|
	p x.to_i
end

puts "Manipulating Array Elements =========="
array = [1, 2, 3, 4]
p array.delete(1)
p array
p array.delete(2)
p array.delete_at(2)

array = [1, 2, 2, 2, 3]
array = array - [2] # => [1, 3]
p array
# removed all the 2s
array = array - [2, 3, 4]
p array

p [1, 2, 3] + [4, 5, 6]
# => [1, 2, 3, 4, 5, 6]
p [1, 2, 3].concat([4, 5, 6])
# => [1, 2, 3, 4, 5, 6]
p [1, 2, 3, 4, 5, 6] - [2, 3]
# => [1, 4, 5, 6]
p [1, 2, 3] | [2, 3, 4]
# => [1, 2, 3, 4]
p [1, 2, 3] & [3, 4]
# => [3]
p [1, 2, 3] * 2
# => [1, 2, 3, 1, 2, 3]

puts "Accessing elements =========="
p %w(a b c)[0] # => 'a' %w(a b c)[1] # => 'b'
# You can crop an array using range
p %w(a b c d)[1..2] # => ['b', 'c'] (indices from 1 to 2, including the 2)
p %w(a b c d)[1...2] # => ['b'] (indices from 1 to 2, excluding the 2)
# This returns a new array, but doesn't aﬀect the original. Ruby also supports the use of negative indices.
p %w(a b c)[-1] # => 'c'
p %w(a b c)[-2] # => 'b'
# You can combine negative and positive indices as well
p %w(a b c d e)[1...-1] # => ['b', 'c', 'd']
p [1, 2, 3, 4].first # => 1
p [1, 2, 3, 4].last
p [1, 2, 3, 4].last(2) # => [3, 4]

# Use sample to access a random element in a array:
p [1, 2, 3, 4].sample # => 3
p [1, 2, 3, 4].sample # => 1
# Or sample(n):
p [1, 2, 3, 4].sample(2) # => [2, 1]
p [1, 2, 3, 4].sample(2) # => [3, 4]

puts "Decomposition =========="
arr = [1, 2, 3] # ---
a = arr[0]
b = arr[1]
c = arr[2]
# --- or, the same
a, b, c = arr
# Preceding a variable with the splat operator (*) puts into it an array of all the elements that haven't been captured by other variables. If none are left, empty array is assigned. Only one splat can be used in a single assignment:
a, *b = arr
a, *b, c = arr

# # a a = = 1; 1; b b = = [2, [2]; 3] c = 3
a, b, c, *d = arr # a = 1; b = 2; c = 3; d = []

# a, *b, *c = arr # SyntaxError: unexpected *
