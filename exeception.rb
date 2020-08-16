puts "Start."
module Greeter
	def hello
		"hello"
	end
end

begin
	greeter = Greeter.new
rescue
	puts "例外が発生したが、このまま続行する"
end

puts "End"


def method_1
	puts "method_1 start."
	begin
		method_2
	rescue
		puts "例外が発生しました"
	end
	puts "method_1 end."
end

def method_2
	puts "method_2 start"
	method_3
	puts "method_2 end."
end

def method_3
	puts "method_3 start"
	1 / 0
	puts "method_3 end."
end

puts method_1


begin
	1 / 0
rescue => e
	puts "エラークラス: #{e.class}"
	puts "エラーメッセージ: #{e.message}"
	puts "バックトレース ------"
	puts e.backtrace
	puts "------"
end


begin
	# 1 / 0
	"abc".foo
rescue ZeroDivisionError
	puts "0で除算しました"
rescue NoMethodError
	puts "存在しないメソッドが呼び出されました"
end


begin
	"abc".foo
rescue ZeroDivisionError, NoMethodError => e
	puts "0で除算したか、存在しないメソッドが呼び出されました"
	puts "エラー: #{e.class} #{e.message}"
end


retry_count = 0
begin
	puts " 処理を開始します"
	1 / 0
rescue
	retry_count += 1
	if retry_count <= 3
		puts "retryします。 (#{retry_count}回目)"
		retry
	else
		puts "retryに失敗しました"
	end
end


def currency_of(country)
	case country
	when :japan
		"yen"
	when :us
		"dollar"
	when :india
		"rupee"
	else
		raise ArgumentError,"無効な国名です。#{country}"
	end
end

currency_of(:japan)
# currency_of(:itary)


require "date"

def convert_heisei_to_date(heisei_text)
		m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
		year = m[:jp_year].to_i + 1998
		month = m[:month].to_i
		day = m[:day].to_i
		begin
			Date.new(year,month,day)
		rescue ArgumentError
			nil
	end
end

require "date"

def convert_heisei_to_date(heisei_text)
		m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
		year = m[:jp_year].to_i + 1988
		month = m[:month].to_i
		day = m[:day].to_i
		if Date.valid_date?(year,month,day)
			Date.new(year,month,day)
		end
end

puts convert_heisei_to_date("平成28年12月31日")
puts convert_heisei_to_date("平成28年99月99日")


def currency_of(country)
	case country
	when :japan
		"yen"
	when :us
		"dollar"
	when :india
		"rupee"
	else
		raise ArgumentError,"無効な国名です。　#{country}"
	end
end

# currency_of(:itary)

input = gets.chomp
input