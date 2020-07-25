# def fizz_buzz(n)
# 	if n % 15 == 0
# 		"Fizz Buzz"
# 	elsif n % 3 ==0
# 		"Fizz"
# 	elsif n% 5 == 0
# 		"Buzz"
# 	else
# 		n.to_s
# 	end
# end

# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)
# puts fizz_buzz(4)
# puts fizz_buzz(5)
# puts fizz_buzz(6)
# puts fizz_buzz(15)
def greeting(country = "japan")
	if country == "japan"
		"こんにちは"
	else
		"hello"
	end
end
 puts greeting
 puts greeting("us")

 def default_args(a,b,c = 0,d = 0)
 	"a=#{a}, b=#{b}, c=#{c}, d=#{d}"
 end
 puts default_args(1,2)
 puts default_args(1,2,3,4)

 def foo(time=Time.now,message=bar)
 	puts "time: #{time},message: #{message}"
 end

 def bar
 	"BAR"
 end

puts foo