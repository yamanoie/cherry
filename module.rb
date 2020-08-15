class Product
	def title
		log "title is called"
		"A great movie"
	end

	private

	def log(text)
		puts"[LOG] #{text}"
	end
end

class User
	def name
		log "name is called"
		"Alice"
	end

	private

	def log(text)
		puts "[LOG] #{text}"
	end
end

product = Product.new
product.title

user = User.new
user.name


# ----------------

module Loggable
	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	include Loggable

	def title
		log "title is called"
		"A great movie"
	end
end

class User
	include Loggable

	def name
		log "name is called"
		"Alice"
	end
end

product = Product.new
product.title

user = User.new
user.name


module Loggable
	private

	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	include Loggable

	def title
		log "name is called"
		"Alice"
	end
end

# product.log "public?"


module Loggable
	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	extend Loggable
	def self.create_products(names)
		log "create_products is called"
	end
end

Product.create_products([])
Product.log("Hello")





module Taggable
	def price_tag
		puts "#{price}円"
	end
end

class Product
	include Taggable

	def price
		1000
	end
end

product = Product.new
product.price_tag


[1,2,3].map{|n| n*10}
{a: 1,b: 2,c: 3}.map { |k,v|[k,v*10]}
(1..3).map {|n| n * 10}
[1,2,3].count
{a: 1,b: 2, c: 3}.count
(1..3).count


class Tempo
	include Comparable

	attr_reader :bpm

	def initialize(bpm)
		@bpm = bpm
	end

	def <=>(other)
		if other.is_a?(Tempo)
			bpm <=> other.bpm
		else
			nil
		end
	end

	def inspect
		"#{bpm}bpm"
	end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

t_120 > t_180
t_120 <= t_180
t_120 == t_180


module NameChanger
	def change_name
		self.name = "ありす"
	end
end

class User
	include NameChanger

	attr_reader :name

	def initialize(name)
		@name = name
	end
end

user = User.new("Alice")
user.name

user.change_name
user.name


module Loggable
	def log(text)
		puts "[LOG]#{text}"
	end
end

s = "abc"

s.log("Hello")
s.extend(Loggable)
s.log("Hello")
