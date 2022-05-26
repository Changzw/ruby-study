#!/usr/bin/ruby

# yield 语句
def test
  puts '在 test 方法内'
  yield
  puts '你又回到了 test 方法内'
  yield
end
test { puts '你在块内' }

def test0
  yield 5, 2
  puts '在 test 方法内'
  yield 100, 2
end
test0 do |i, j|
  puts "你在块 #{i}, #{j} 内"
end

# 但是如果方法的最后一个参数前带有 &，那么您可以向该方法传递一个块，
# 且这个块可被赋给最后一个参数。如果 * 和 & 同时出现在参数列表中，& 应放在后面。
# def test(*params) * 表示可变参数
def test1(&block)
  block.call
end
test1 { puts 'Hello World!' }

def test2(&block)
  block.call 10, 4
  block.call 20, 4
end

puts "-------------"
test2 do |k, f|
  puts k, f
end
puts "-------------"

test2 do |*argc|
	puts "-----------"
	k, *other = argc
	puts "k=#{k}"
	puts "other=#{other}"
end