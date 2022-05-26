#!/usr/bin/ruby
puts 'type---------------------'
int = 10
float = 10.0
string = 'adfads'

puts int.class
puts float.class
puts string.class

# 使用序列 #{ expr } 替换任意 Ruby 表达式的值为一个字符串
puts "#{int}, #{float}, #{string}"

puts 'array---------------------'
# array
arr = ['fred', 10, 3.14, 'This is a string', 'last element']
arr.each do |x|
  puts x
end

sum = 0
(14..15).each do |x|
  sum += x
end

puts "(14..15) sum is #{sum}"

puts 'hash---------------------'
# hash
hsh = { 'kk' => 1, 'jj' => 2, 'll' => 'a' }
hsh.each do |key, value|
  puts "(#{key}:#{value})"
end
