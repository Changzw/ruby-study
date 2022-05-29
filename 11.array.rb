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
