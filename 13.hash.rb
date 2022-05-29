#!/usr/bin/ruby

require "json"

mvp_rank = {
	"a" => 1,
	"b" => 2,
	"c" => 3
}

puts mvp_rank
puts mvp_rank.to_json
mvp_rank["a"] = 10
# puts mvp_rank[:a]

# 类似json 使用
player = {
	name: "czw",
	age: 18,
	salary: "100w"
}

puts [player[:name], player[:age].to_s, player[:salary]].join(" ")

