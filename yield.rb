def greeting
	puts "おはよう"
	yield
	yield
	puts "こんばんは"
end

greeting do
	puts "こんにちは"
end

def greeting
	puts "おはよう"
	if block_given?
		yield
	end
	puts "こんばんは"
end

greeting

greeting do
	puts "こんばんは"
end

def greeting
	puts "おはよう"
	text = yield "hello"
	puts text
	puts "こんばんは"
end

greeting do |text|
	text * 2
end

def greeting
	puts "おはよう"
	text = yield "おはよう"
	puts text
	puts "こんばんは"
end

greeting do |text,other|
	text * 2 + other.inspect
end

def greeting(&block)
	puts "おはよう"
	text = block.call("こんにちは")
	puts text
	puts "こんばんは"
end

greeting do |text|
	text * 2
end

def greeting(&block)
	puts "おはよう"
	unless block.nil?
		text = block.call("こんにちは")
		puts text
	end
	puts "こんばんは"
end

greeting

greeting do |text|
	text * 2
end

def greeting_ja(&block)
	texts = ["おはよう","こんにちは","こんばんは"]
	greeting_common(texts,&block)
end

def greeting_en(&block)
	texts = ["good morning","hello","good evening"]
	greeting_common(texts,&block)
end

def greeting_common(texts,&block)
	puts texts[0]
	puts block.call(texts[1])
	puts texts[2]
end

greeting_ja do |text|
	text * 2
end

greeting_en do |text|
	text.upcase
end

def greeting(&block)
	puts "おはよう"
	text =
	if block.arity == 1
		yield "こんにちは"
	elsif block.arity == 2
		yield "こんに","ちは"
	end
	puts text
	puts "こんばんは"
end

greeting do |text|
	text * 2
end

greeting do |text_1,text_2|
	text_1 *2 + text_2 *2
end


# Proc

hello_proc = Proc.new do
	"Hello"
end

hello_proc = Proc.new {"Hello"}


puts hello_proc.call

add_proc = Proc.new{|a,b|a+b}
add_proc.call(10.20)

add_proc = Proc.new { |a = 0,b = 0| a + b }
add_proc.call
add_proc.call(10)
add_proc.call(10,20)
add_proc.proc {|a,b| a + b }


def greeting(&block)
	puts block.class

	puts "おはよう"
	text = block.call("こんにちは")
	puts text
	puts "こんばんは"
end

greeting do |text|
	text * 2
end

repeat_proc = Proc.new{|text| text * 2}
greeting(&repeat_proc)


def greeting(arrange_proc)
	puts "おはよう"
	text = arrange_proc("こんにちは")
	puts text
	puts "こんばんは"
end

repeat_proc = Proc.new{ |text| text * 2 }
greeting(repeat_proc)


def greeting(proc_1,proc_2,proc_3)
	puts proc_1.call("おはよう")
	puts proc_2.call("こんにちは")
	puts proc_3.call("こんばんは")
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text *2 }
question_proc = Proc.new{ |text| "#{text}?"}

greeting(shuffle_proc,repeat_proc,question_proc)


add_proc = Proc { |a,b| a + b }
add_proc.call(10,20)
add_proc.yield(10,20)
add_proc.(10,20)
add_proc[10,20]

