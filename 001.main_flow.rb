#!/usr/bin/ruby 
# -*- coding: UTF-8 -*-

class Book 
	attr_accessor :title, :describe, :book_type, :price, :published_at 

	MY_BOOK = Array[
		{ title: "Book", describe: "Book", price:"99", published_at:"2015-12-12 12:12:01", description: "Book description" },
    { :title => "台湾自助游参考手册", :describe => :"从此告别跟团的强制购物", :book_type => "1", :price => "50", :published_at => "2014-01-01 01:01:01" },
    { :title => "Ruby完全入门自学册", :describe => :"Ruby入门必读精品", :book_type => "2", :price => "75", :published_at => "2015-02-02 02:02:02" },
    { :title => "军事基础", :describe => :"军事迷必备书籍", :book_type => "3", :price => "100", :published_at => "2016-03-03 03:03:03" },
  ]

	def initialize(title, desc, book_type, price, published_at)  
		@title = title
		@describe = desc
		@book_type = book_type
		@price = price
		@published_at = published_at
	end

	def self.create_some_book 
		for idx in 0..2 
			book = MY_BOOK[idx]
			case idx
			when 0
				@b0 = Book.new(book[:title], book[:describe], book[:book_type], book[:price], book[:published_at])
				puts @b0.title, @b0.describe, @b0.book_type
			when 1
				@b1 = Book.new(book[:title], book[:describe], book[:book_type], book[:price], book[:published_at])
				puts @b1.title, @b1.describe, @b1.book_type
			else
				@b2 = Book.new(book[:title], book[:describe], book[:book_type], book[:price], book[:published_at])
				puts @b2.title, @b2.describe, @b2.book_type
			end
		end
	end 
end

Book.create_some_book

[1, 2, 3, 4, 5].each { |number| puts "#{number} was passed to the block" }

print [1, 2, 3, 4, 5].collect { |number| number + 1 }

def sayHello 
	yield 
	yield
end

sayHello { puts "Hello" }

def sayHello1
  puts 'Hello, This is a block'                      
end
sayHello1

def sayHello2 &block
  block.call if block   # 块会在这里通过call来调用
end
sayHello2 {puts '&block Hello, This is a block'} 
sayHello2

def sayHello3
  yield('Andrew')
end
sayHello3 { |name| puts "Hello, #{name}, This is block" }
