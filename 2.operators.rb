#!/usr/bin/ruby

=begin
Ruby 范围运算符
在 Ruby 中，序列范围用于创建一系列连续的值 - 包含起始值、结束值（视情况而定）和它们之间的值。
在 Ruby 中，这些序列是使用 ".." 和 "..." 范围运算符来创建的。两点形式创建的范围包含起始值和结束值，三点形式创建的范围只包含起始值不包含结束值。
..	创建一个从开始点到结束点的范围（包含结束点）	1..10 创建从 1 到 10 的范围
...	创建一个从开始点到结束点的范围（不包含结束点）	1...10 创建从 1 到 9 的范围
=end

=begin
Ruby defined? 运算符
defined? 是一个特殊的运算符，以方法调用的形式来判断传递的表达式是否已定义。它返回表达式的描述字符串，如果表达式未定义则返回 nil。
下面是 defined? 运算符的各种用法：
=end 

puts defined? variable
foo = 42
puts defined? foo    # => "local-variable"
puts defined? $_     # => "global-variable"
puts defined? bar    # => nil（未定义） # 如果 variable 已经初始化，则为 True

defined? method_call # 如果方法已经定义，则为 True

defined? puts        # => "method"
defined? puts(bar)   # => nil（在这里 bar 未定义）
defined? unpack      # => nil（在这里未定义）
# 用法 3
# 如果存在可被 super 用户调用的方法，则为 True
defined? super

defined? super     # => "super"（如果可被调用）
defined? super     # => nil（如果不可被调用）
# 用法 4
defined? yield   # 如果已传递代码块，则为 True
defined? yield    # => "yield"（如果已传递块）
defined? yield    # => nil（如果未传递块）

=begin 
Ruby 点运算符 "." 和双冒号运算符 "::"
你可以通过在方法名称前加上类或模块名称和 . 来调用[类或模块中的方法]。你可以使用类或模块名称和两个冒号 :: 来引用[类或模块中的常量]。
:: 是一元运算符，允许在类或模块内定义常量、实例方法和类方法，可以从类或模块外的任何地方进行访问。
请记住：在 Ruby 中，类和方法也可以被当作常量。
你只需要在表达式的常量名前加上 :: 前缀，即可返回适当的类或模块对象。
如果 :: 前的表达式为类或模块名称，则返回该类或模块内对应的常量值；如果 :: 前未没有前缀表达式，则返回主Object类中对应的常量值。 。
=end 

MR_COUNT_ = 0        # 定义在主 Object 类上的常量
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1    # 设置全局计数为 1
  MR_COUNT = 2      # 设置局部计数为 2
end
puts MR_COUNT_       # 这是全局常量
puts Foo::MR_COUNT  # 这是 "Foo" 的局部常量
puts MR_COUNT_

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST