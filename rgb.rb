def to_hex(r,g,b)
	[r,g,b].inject("#") do |hex, n|
	hex += n.to_s(16).rjust(2,"0")
    end
end

def to_ints(hex)
	hex.scan(/\w\w/).map(&:hex)
end


# def greeting(*names)
# 	"#{names.join("と")},こんにちは!"
# end
# puts.greeting("田中さん")
# puts.greeting("田中さん","鈴木さん")
# puts.greeting("田中さん","鈴木さん","佐藤さん")
