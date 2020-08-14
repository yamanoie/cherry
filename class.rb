users=[]
users << {first_name: "Alice",last_name:"Ruby",age: 20}
users<< {first_name: "Bob",last_name: "Python",age: 30}

users.each do |user|
	puts "氏名: #{user[:first_name]}#{user[:last_name]},年齢: #{user[:age]}"
end

def full_name(user)
	"#{user[:first_name]}#{user[:last_name]}"
end

users.each do |user|
	puts "氏名: #{full_name(user)},年齢: #{user[:age]}"
end

# class User
# 	def initialize(name,age)
# 		puts "name:#{name}, age:#{age}"
# 	end
# end
# User.new("Alice",20)

class User
	def hello
		puts "Hello!"
	end
end

user = User.new
user.hello

class User
	def initialize(name)
		@name = name
	end
	def hello
		puts "Hello,I am #{@name}"
	end
end
user = User.new("Alice")
user.hello

class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

user = User.new("Alice")
user.name = "Bob"
puts user.name


 
class User
	def initialize(name)
		@name = name
	end

	def self.create_users(names)
		names.map do |name|
			User.new(name)
		end
	end

	def hello
		puts "Hello,I am #{@name}"
	end
end

names = ["Alice","Bob","Carol"]
users = User.create_users(names)
users.each do |user|
	puts user.hello
end


class Product
	DEFAULT_PRICE = 0
	attr_reader :name, :price
	def initialize(name,price = DEFAULT_PRICE)
		@name = name
		@price = price
	end
end

product = Product.new("A free movie")
puts product.price
puts product.name


class User
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def hello
		"Hello, I am #{name}"
	end

	def hi
		"Hi, I am #{self.name}"
	end

	def my_name
		"My name is #{@name}"
	end

end

user = User.new("Alice")
puts user.hello
puts user.hi
puts user.my_name

class Foo
	puts "クラス構文直下のself: #{self}"

	def self.bar
		puts "クラスメソッド内のself: #{self}"
	end

	def baz
		puts "インスタンスメソッド内のself: #{self}"
	end
end
Foo.bar

foo = Foo.new
foo.baz

class Foo
	3.times do
		puts "Hello"
	end
end


class Product
	attr_reader :name, :price

	def initialize(name,price)
		@name = name
		@price = price
	end

	def self.format_price(price)
		"#{price}円"
	end

	def to_s
		formatted_price = Product.format_price(price)
		"name: #{name},price: #{formatted_price}"
	end
end

product = Product.new("A great movie", 1000)
puts product.to_s