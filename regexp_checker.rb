print "Text?:"
text = gets.chomp

begin
	print "Pattern?: "
	pattern = gets.chomp
	regexp = Regexp.new(pattern)
rescue RegexpError => e
	puts "Invalid pattern: #{e.message}"
	retry
end
	matches = text.scan(regexp)
	if matches.size > 0
		puts "Matched: #{matches.join(',')}"
	else
		puts "Nothing Matched"
end


file = File.open("some.txt","w")

begin
	file << "Hello"
ensure
	file.close
end

File.open("some.txt","w") do |file|
	file << "Hello"
	1 / 0
end

require "date"

def to_date(string)
	Date.perse(string) rescue nil
end

to_date("2017-01-01")
to_date("abcdef")


def fizz_buzz(n)

if n % 15 == 0
	"Fizz Buzz"
elsif n % 3 == 0
	"Fizz"
elsif n % 5 == 0
	"Buzz"
else
	n.to_s
end
rescue => e
puts "#{e.class} #{e.message}"
	end


fizz_buzz(nil)
