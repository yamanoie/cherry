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


# class User
# 	attr_accessor :name
# 	def initialize(name)
# 		@name = name
# 	end

# 	def hello
# 		"Hello, I am #{name}"
# 	end

# 	def hi
# 		"Hi, I am #{self.name}"
# 	end

# 	def my_name
# 		"My name is #{@name}"
# 	end

# end

# user = User.new("Alice")
# puts user.hello
# puts user.hi
# puts user.my_name

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


# クラスの継承

class Product
	attr_reader :name, :price

	def initialize(name,price)
		@name = name
		@price = price
	end
end
product = Product.new("A great movie", 1000)
p product.name
p product.price

class DVD < Product
	attr_reader :runnning_time

# 	def initialize(name,price,runnning_time)
# 		@name = name
# 		@price = price
# 		@runnning_time = runnning_time
# 	end
# end
# dvd = DVD.new("A great movie", 1000, 120)
# dvd.name
# dvd.price
# dvid.runnning_time

	def initialize(name,price,runnning_time)
		super(name,price)
		@runnning_time = runnning_time
	end
end
dvd = DVD.new("A great time", 1000 ,120)
dvd.name
dvd.price
dvd.runnning_time

class DVD < Product
	def initialize(name,price)
		super
	end
end
dvd = DVD.new("A great movie", 1000)
dvd.name
dvd.price


class Product
	attr_reader :name, :price

	def initialize(name,price)
		@name = name
		@price = price
	end
end

class DVD < Product
	attr_reader :runnning_time

	def initialize(name, price,runnning_time)
		super(name,price)
		@runnning_time = runnning_time
	end

	def to_s
		"#{super},runnning_time: #{runnning_time}"
	end
end

product = Product.new("A great movie", 1000)
puts product.to_s

dvd = DVD.new("An awesome film", 3000, 120)
puts dvd.to_s

class Foo
	def self.hello
		puts "hello"
	end
end

class Bar < Foo
end
	Foo.hello
	Bar.hello



# メソッドの公開レベル

# class User
# 	private

# 	def hello
# 		puts "Hello"
# 	end
# end
# user = User.new
# user.hello


class User
	def hello
		"Hello, I am #{name}"
	end

	private

	def name
		"Alice"
	end
end
user = User.new
user.hello

class Product
	private

	def name
		"A great movie"
	end
end

class DVD < Product
	def to_s
		"name: #{name}"
	end
end

dvd = DVD.new
dvd.to_s


class Product
	def to_s
		"name: #{name}"
	end

	private

	def name
		"A great movie"
	end
end

class DVD < Product
	private

	def name
		"An awsome film"
	end
end

product = Product.new
product.to_s

dvd = DVD.new
dvd.to_s


class User
	class << self
		private

		def hello
			puts "Hello"
		end
	end
end
User.hello  #エラーになる

class User
	def self.hello
		"Hello"
	end

	private_class_method :hello
end
User.hello #error


class User

	def foo
		"foo"
	end

	def bar
		"bar"
	end

	private :foo, :bar
	def baz
		"baz"
	end
end

user = User.new
user.foo #error
user.bar #error
user.baz



class User
	attr_reader :name
	def initialze(name, weight)
		@name = name
		@weight = weight
	end

	def heavier_than?(other_user)
		other_user.weight < @weight
	end
end

	protected

	def weight
		@weight
	end

alice = User.new("alice", 50)
bob = User.new("Bob", 60)
alice.heavier_than?(bob)

alice.weight #error


class Parent
	def initialize
		@first = 1
		@second = 2
		@third = 3
	end

	def number
		"#{@first}.#{@second}.#{@third}"
	end
end

class Child < Parent
	def initialize
		super
		@hour = 6
		@minute = 30
		@second = 59
	end

	def time
		"#{@hour}:#{@minute}:#{@second}"
	end
end

parent = Parent.new
parent.number
child = Child.new
child.time
child.number #second予期せぬオーバーライド


# 定数
class Product
	DEFAULT_PRICE = 0
end

Product::DEFAULT_PRICE



class Product
	DEFAULT_PRICE = 0
	DEFAULT_PRICE = 1000
end

Product::DEFAULT_PRICE
Product::DEFAULT_PRICE = 3000

Product.freez
Product::DEFAULT_PRICE = 5000 #代入できない


# 変数

class Product
	@name = "Product" #クラスインスタンス変数

	def self.name #クラスインスタンス変数
		@name
	end

	def initialize(name) #インスタンス変数
		@name = name
	end

	def name #インスタンス変数
		@name
	end

 class DVD < Product
 	@name = DVD
 	def self.name
 		@name
 	end

 	def upcase_name
 		@name.upcase
 	end
 end

 Product.name
 DVD.name

 product = Product.new("A great movie")
 product.name

 dvd = DVD.new("An awsome film")
 dvd.name
 dvd.upcase_name


 class Product
 	@@name = "Product"

 	def self.name
 		@@name
 	end

 	def initialize(name)
 		@@name = name
 	end

 	def name
 		@@name
 	end
 end

 class DVD < Product
 	@@name = "DVD"

 	def self.name
 		@@name
 	end

 	def upcase_name
 		@@name.upcase
 	end
 end

 Product.name
 DVD.name

product = Product.new("A great movie")
product.name

Product.name
DVD.name
dvd = DVD.new("An awesome film")
dvd.namedvd.upcase_name

product.name
Product.name
DVD.name

$program_name = "Awsome program"

class Program
	def initialize(name)
		$program_name = name
	end

	def self.name
		$program_name
	end

	def name
		$program_name
	end
end

Program.name

program = Program.new("Super program")
program.name
Program.name
Program.name
$program_name


class User
	def hello
		"Hello"
	end

	alias greeting hello
end

user = User.new
user.hello
user.greeting


class User
	undef freeze
end
user = User.new
user.freeze #error

class User
	class BloodType
		attr_reader :type

		def initialize(type)
			@type = type

		end
	end
end

blood_type = User::BloodType.new("B")
blood_type.type

class User
	def initialize(name)
		@name = name
	end

	def hello
		"Hello, #{@name}"
	end
end

user = User.new("Alice")
user.hello

class User
	def hello
		"#{@name}さん,こんにちは！"
	end
end
user.hello

alice = "I am Alice."
bob = "! am Bob."

def alice.shuffle
	charts.shuffle.join
end

alice.shuffle
bob.shuffle #error


class User
	def self.hello
		"Hello"
	end

	class << self
		def hi
			"Hi"
		end
	end
end
alice = "I am Alice"

def alice.hello
	"Hello"
end

class << alice
	def hi
		"Hi"
	end
end 

