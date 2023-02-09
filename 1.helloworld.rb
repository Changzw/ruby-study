#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

puts "Hello Ruby !"
puts `ruby --version`

class Obj
end

obj = Obj.new
obj1 = Obj.new

def obj.fly
  puts "fly"
end

obj.fly
obj1.fly
