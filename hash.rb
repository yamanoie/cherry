currencies = {"japan"=>"yen","us"=>"doller","india"=>"rupee"}

currencies.each do |key,value|
	puts "#{key} : #{value}"
end

currencies.each do |key_value|
	key = key_value[0]
	value = key_value[1]
	puts "#{key}:#{value}"
end

currencies.delete("japan")
p currencies

currencies.delete("italy"){|key| "Not found:#{key}"}
p currencies



a={"x"=>1,"y"=>2,"z"=>3}
b={"x"=>1,"y"=>2,"z"=>3}
a == b


person = {
	name: "Alice",
	age: 20,
	friends: ["Bob","Carol"],
	phones: { home: "1234-0000", mobile: "5678-0000" }
}

p person[:name]
p person[:age]
p person[:friends]
p person[:phones][:mobile]



# イディオム

def find_currency(country)
	currencies = {japan: "yen",us: "doller",india: "rupee"}
	currencies[country]
end

p find_currency(:us)


# def show_currency(country)

# 	currency  = find_currency(county)
	
# 	if currency
# 		currency.upcase
# 	end
# end
# show_currency(:japan)

a= "foo"
a&.upcase


def user_exists?
	user = find_user
	if user
		true
	else
		falase
	end
end

def user_exists?
	!!find_user
end
