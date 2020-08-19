def to_hex(r,g,b)
	[r,g,b].inject("#") do |hex, n|
		puts hex
		hex + n.to_s(16).rjust(2,"0")
	end
end

def greeting(countruy)
	puts "greeting start"
	return "countruyを入力してください" if country.nil?
	if country == "Japan"
		puts "Japan"
		"こんにちは"
	else
		puts "other"
		"hello"
	end
end

def calc_fare(ticket)
	from = STATIONS.index(ticket.stamped_at)
	to = STATIONS.index(@name)
	distance = p to - from
	FARES[distance - 1]
end

a = "hello".tap {|s| puts "<<#{s}>>" }
