numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
	sum += n
end
puts sum

a = [1,2,3,1,2,3]
a.delete_if do |n|
	n.odd?
end

print a

# numbers = [1,2,3,4]
# sum = 0
# numbers.each do |n|
# 	sum_value = n.even? ?n * 10
# 	sum += sum_value
# end
#  puts sum

# do~end = {}

numbers = [1,2,3,4,5]
sum = 0
numbers.each {|n| sum += n}
 puts sum


numbers = [1,2,3,4,5,]
	new_numbers = []
	numbers.each {|n| new_numbers << n * 10}
	puts new_numbers

# mapメソッド


numbers = [1,2,3,4,5]
new_numbers = numbers.map {|n| n*100}
puts new_numbers

# selectメソッド

numbers = [1,2,3,4,5,6]

even_number = numbers.select {|n| n.even?}
puts even_number

# rejectメソッド

numbers = [1,2,3,4,5,6]

non_multiples_of_three = numbers.reject{|n| n%3==0}
puts non_multiples_of_three

#select メソッド

numbers = [1,2,3,4,5]
even_number = numbers.find{|n| n.even?}
puts even_number

# injectメソッド

numbers = [1,2,3,4,]
sum = numbers.inject(0) { |result, n| result + n }
puts sum

# &:

puts ["ruby","java","perl"].map {|s|s.upcase}
puts ["ruby","java","perl"].map(&:upcase)
puts [1,2,3,4,5,6].select(&:odd?)

# range

def liquid?(temperature)
	0 <= temperature && temperature < 100
end
liquid?(-1)
liquid?(0)
liquid?(99)
liquid?(100)


def liquid?(temperature)
	(0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)



def charge(age)
	case age
	when 0..5
		0
	when 6..12
		300
	when 13..18
		600
	else
		1000
	end
end
puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)


numbers = (1..4).to_a
sum = 0
numbers.each {|n|sum += n }
puts sum


sum = 0
(1...7).each {|n|sum+=n}
puts sum


numbers = []
(1..10).step(2) {|n| numbers << n}
puts numbers

dimensions = [
[10,20],
[30,40],
[50,60],
]

areas = []
dimensions.each do |length,width|
	areas << length * width
end
puts areas

dimensions.each_with_index do |(length,width),i|
	puts "length:#{length},width:#{width}, i:#{i}"
end


numbers = [1,2,3,4]
sum = 0
numbers.each do |n;sum|
	sum =10
	sum +=n 
	p sum
end

puts sum


names = ["田中","鈴木","佐藤"]
# sun_names = names.map{ |name| "#{name}さん"}.join("と")
# puts sun_names

names.map do |name|
	"#{name}さん"
end.join("と")


# upto

a= []
10.upto(14) {|n| a << n}
p a

a=[]
14.downto(10) {|n| a<<n}
p a
