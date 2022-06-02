#!/usr/bin/ruby

# Ruby 支持五种类型的变量。
# 	一般小写字母、下划线开头：变量（Variable）。
# 	$开头：全局变量（Global variable）。
# 	@开头：实例变量（Instance variable）。
# 	@@开头：类变量（Class variable）类变量被共享在整个继承链中
# 	大写字母开头：常数（Constant）。
# =
# Ruby 全局变量
# 全局变量以 $ 开头。未初始化的全局变量的值为 nil，在使用 -w 选项后，会产生警告。
# 给全局变量赋值会改变全局状态，所以不建议使用全局变量。
# 下面的实例显示了全局变量的用法。
# =$global_variable = 10
class Class1
  def print_global
    puts "全局变量在 Class1 中输出为 #{$global_variable}"
  end
end

class Class2
  def print_global
    puts "全局变量在 Class2 中输出为 #{$global_variable}"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

# Ruby 实例变量
# 实例变量以 @ 开头。未初始化的实例变量的值为 nil，在使用 -w 选项后，会产生警告。
# 下面的实例显示了实例变量的用法。
#
# Ruby 类变量
# 类变量以 @@ 开头，且必须初始化后才能在方法定义中使用。
# 引用一个未初始化的类变量会产生错误。类变量在定义它的类或模块的子类或子模块中可共享使用。
# 在使用 -w 选项后，重载类变量会产生警告。
# 下面的实例显示了类变量的用法。
# =
class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details
    puts "Customer id #{@cust_id}"
    puts "Customer name #{@cust_name}"
    puts "Customer address #{@cust_addr}"
  end

  def total_no_of_customers
    @@no_of_customers += 1
    puts "Total number of customers: #{@@no_of_customers}"
  end
end

# 创建对象
cust1 = Customer.new('1', 'John', 'Wisdom Apartments, Ludhiya')
cust2 = Customer.new('2', 'Poul', 'New Empire road, Khandala')

# 调用方法
cust1.display_details
cust1.total_no_of_customers
cust2.display_details
cust2.total_no_of_customers

# Ruby 常量
# 常量以大写字母开头。定义在类或模块内的常量可以从类或模块的内部访问，定义在类或模块外的常量可以被全局访问。
# 常量不能定义在方法内。引用一个未初始化的常量会产生错误。对已经初始化的常量赋值会产生警告。
class Example
  VAR1 = 100
  VAR2 = 200
  def show
    puts "第一个常量的值为 #{VAR1}"
    puts "第二个常量的值为 #{VAR2}"
  end

  def instance_method
    puts 'instance_method' # instance method
  end

  def self.class_method # class method
    puts 'class_method' # instance method
  end
end

# 创建对象
object = Example.new
object.show
object.instance_method
Example.class_method
puts Example::VAR1
puts Example::VAR2

# Ruby 伪变量
# 它们是特殊的变量，有着局部变量的外观，但行为却像常量。您不能给这些变量赋任何值。
#
# self: 当前方法的接收器对象。
# true: 代表 true 的值。
# false: 代表 false 的值。
# nil: 代表 undefined 的值。
# __FILE__: 当前源文件的名称。
# __LINE__: 当前行在源文件中的编号。

puts '-------------------------------'
# 模板级的对象, 是实例变量，能够被该类或子类继承使用
@name
puts @name
class Player
  def initialize(name = 'czw')
    @name = name
  end

  def show
    puts "player: #{@name}"
  end
end

ll = Player.new
ll.show
curry = Player.new('curry')
curry.show
harden = Player.new('harden')
harden.show

puts '-------------------------------'
# 列出对象（类）内部的方法
# instance_methods
# 调查对象的方法/属性是否可用
# respond_to?
# 执行对象的方法
# send
class Game
  def initialize(title = '三国志14', price = 300)
    @title = title
    @price = price
  end

  def show
    puts "title: #{@title}, price: #{@price}"
  end

  def show2; end

  def show3; end
end

puts Game.instance_methods false
g0 = Game.new('jjjj', 200)
g0.send('show') if g0.respond_to?('show')

puts '使用对象属性-------------------------------'
# 属性存储器, 定义可存取对象的属性，就是属性的访问权限
# attr_accessor
# =
class Game2
  attr_accessor :price
  attr_reader :title

  def initialize(id = 0, title = '三国志14', price = 300)
    @title = title
    @price = price
    @id = id
  end

  def show
    puts "title: #{@title}, price: #{@price}"
  end

  def show2; end

  def show3; end

  def self.llll
    puts 'dafad'
  end
end

g2 = Game2.new
puts 'title is ' + g2.respond_to?('title').to_s
puts 'price is ' + g2.respond_to?('price').to_s
# g2.title = 3 不行 因为是 readeri
g2.price = 4
puts g2.price
# 类方法
Game2.llll
Game2.llll

puts '类继承-------------------------------'

class SteamGame < Game2
  def SteamInfo
    puts 'game all in one'
  end
end
puts SteamGame.instance_methods(false)
SteamGame.llll
s = SteamGame.new
puts s.title
p s.title

p '-----RubyNotesForProfessionals------'
class Dinosaur
  @@classification = 'Like a Reptile, but like a bird'
  def self.classification
    @@classification
  end
  def classification
    @@classification
  end
end
p Dinosaur.classification
p Dinosaur.new.classification

class TRex < Dinosaur 
	@@classification = "TRex form Dinosaur"
end 
# Class variables are shared between related classes and can be overwritten from a child class
p TRex.classification
p Dinosaur.classification

module SomethingStrange 
	@@classification = "Something Strange" 
end
class DuckDinosaur < Dinosaur 
	CONSTA = "111"
	CONSTB = 222
	include SomethingStrange 

	def showConst() 
		p CONSTA
	end
end
p DuckDinosaur.classification
p DuckDinosaur::classification
p DuckDinosaur::CONSTA
DuckDinosaur::CONSTA="222"
p DuckDinosaur::CONSTA
p DuckDinosaur.new.showConst

2.times {|x|
	p x
}

"abc".split("") {|x|
	puts x
	p x
}

$i_am_global = "omg"

