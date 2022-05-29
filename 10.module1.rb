#!/usr/bin/ruby
$LOAD_PATH << "."

require '10.module2'

Moral.sin 6


#minix
module A
	def a1
	end
	def a2
	end
end
module B
	def b1
		puts "dafadsfff"
	end
	def b2
	end
end

class Sample
include A
include B
	def s1
	end
end

samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1

class KK include B 

end 
jl = KK.new
jk.b1