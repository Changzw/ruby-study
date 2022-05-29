#!/usr/bin/ruby

=begin
Ruby 方法
Ruby 方法与其他编程语言中的函数类似。Ruby 方法用于捆绑一个或多个重复的语句到一个单元中。
方法名应以小写字母开头。如果您以大写字母作为方法名的开头，Ruby 可能会把它当作常量，从而导致不正确地解析调用。
方法应在调用之前定义，否则 Ruby 会产生未定义的方法调用异常。 语法
def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
   expr..
end
所以，您可以定义一个简单的方法，如下所示：
def method_name 
   expr..
end
您可以定义一个接受参数的方法，如下所示：
def method_name (var1, var2)
   expr..
end
您可以为参数设置默认值，如果方法调用时未传递必需的参数则使用默认值：
def method_name (var1=value1, var2=value2)
   expr..
end
当您要调用方法时，只需要使用方法名即可，如下所示：
method_name
但是，当您调用带参数的方法时，您在写方法名时还要带上参数，例如：
method_name 25, 30
=end

def test(a1="Ruby", a2="Perl")
	puts "编程语言为 #{a1}"
	puts "编程语言为 #{a2}"
end
test "C", "C++"
test

def test0
	i = 100
	j = 10
	k = "a return"
end

puts test0

=begin
Ruby return 语句
Ruby 中的 return 语句用于从 Ruby 方法中返回一个或多个值。语法
return [expr[`,' expr...]]
=end

def retrunTest 
	return 1,2,3,4
end 
kk=retrunTest
puts kk.class
puts kk
puts kk.length

=begin
可变数量的参数
假设您声明了一个带有两个参数的方法，当您调用该方法时，您同时还需要传递两个参数。
但是，Ruby 允许您声明参数数量可变的方法。让我们看看下面的实例：
=end
def sample (*test)
   puts "参数个数为 #{test.length}"
   for i in 0...test.length
      puts "参数值为 #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

# 类方法
class Accounts
	def reading_charge
	end
	def Accounts.return_date
	end
end


def hello 
	puts "hellow world"
end

# error
# def hello {
# 	puts "hellow world"
# }

hello
def hello_(who="czw")
	puts "hellow world! #{who}"
end
hello_("changzhognwei")
hello_ 
