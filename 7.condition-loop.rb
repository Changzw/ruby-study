#!/usr/bin/ruby

x = 1
if x > 2
  puts 'x 大于 2'
elsif x <= 2 and x != 0
  puts 'x 是 1'
else
  puts '无法得知 x 的值'
end # -*- coding: UTF-8 -*-

x = 3
if x > 2
  puts 'x 大于 2'
elsif x <= 2 and x != 0
  puts 'x 是 1'
else
  puts '无法得知 x 的值'
end

x = 1
if x > 2
  puts 'x 大于 2'
else
  puts 'x 小于 2'
end

# Ruby if 修饰符语法
# [code if condition]
# if修饰词组表示当 if 右边之条件成立时才执行 if 左边的式子。即如果 conditional 为真，则执行 code。
$debug = true
print "if true debug\n" if $debug
$debug = false
print "if false debug\n" if $debug
# Ruby unless 修饰符语法
# [code unless conditional]
# if修饰词组表示当 if 右边之条件成立时才执行 if 左边的式子。即如果 conditional 为真，则执行 code。
$debug = true
print "unless true debug\n" unless $debug
$debug = false
print "unless false debug\n" unless $debug

# case

for age in 1...18 do
  case age
  when 0..2
    puts '婴儿'
  when 3..6
    puts '小孩'
  when 7..12
    puts 'child'
  when 13..18
    puts '少年'
  else
    puts '其他年龄段的'
  end
end

puts "0-----------------"
$age =  5 #全局变量
case $age
when 0 .. 2
    puts "婴儿"
when 3 .. 6
    puts "小孩"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "少年"
else
    puts "其他年龄段的"
end

# 当case的"表达式"部分被省略时，将计算第一个when条件部分为真的表达式。
foo = false
bar = true
quu = false
case
when foo then puts 'foo is true'
when bar then puts 'bar is true'
when quu then puts 'quu is true'
end
# 显示 "bar is true"

=begin
Ruby while 语句
while conditional [do]
   code
end
或者
while conditional [:]
   code
end
=end
$i = 0
num = 5
 
while $i < num  do
   puts("在while循环语句中 i = #$i" )
   $i +=1
end

=begin
Ruby until 语句语法
until conditional [do]
   code
end
当 conditional 为假时，执行 code。
语法中 do 可以省略不写。但若要在一行内写出 until 式，则必须以 do 隔开条件式或程式区块。
=end 
$i=0
until $i > num  do
   puts("在until循环语句中 i = #$i" )
   $i +=1;
end

=begin
Ruby for 语句语法
for variable [, variable ...] in expression [do]
   code
end
先计算表达式得到一个对象，然后针对 expression 中的每个元素分别执行一次 code。
=end
for i in 0..5
   puts "for 局部变量的值为 #{i}"
end

(0..5).each do |i|
	puts "each loop 局部变量的值为 #{i}"
end

# break, next, redo, retry