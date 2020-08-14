text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/

text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT
puts text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

# <select name="game_console">
# none,
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>

# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')


def hello(name)
  puts "Hello, #{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')




{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}


text = "私の誕生日は1997年7月17日"
if m = /(\d+)年(\d+)月(\d+)日/.match(text)
	puts "おk"
else
	p "だめ"
end


text = "私の誕生日は1997年7月17日"
m = /(\d+)年(\d+)月(\d+)日/.match(text)

puts m[0]
puts m[2,2]
puts m[-1]
puts m[1..3]

text = "私の誕生日は1997年7月17日"
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

puts m[:year]
puts m[:month]
puts m[2]

text = "私の誕生日は1997年7月17日"
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
	puts "#{year}/#{month}/#{day}"
end


puts "1997年7月17日 2016年12月31日".scan(/(\d+)年(\d+)月(\d+)日/)
puts "1997年7月17日 2016年12月31日".scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
puts "1997年7月17日 2016年12月31日".scan(/\d+年\d+月\d+日/)

text = "郵便番号は123-4567です"
puts text[/\d{3}-\d{4}/]
text = "123-4567 456-7890"
puts text[/\d{3}-\d{4}/]

text = "私の誕生日は1997年7月17日"
puts text[/(\d+)年(\d+)月(\d+)日/]
puts text.slice(/(\d+)年(\d+)月(\d+)日/,3)
puts text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]

text = "123,456-789"
p text.split(',')
p text.split(/,|-/)
p text.gsub(",",":")
p text.gsub(/,|-/,":")

text = "私の誕生日は1997年7月17日"
puts text.gsub(/(\d+)年(\d+)月(\d+)日/,"\1-\2-\3")

