
scores1 = {"taguchi" => 300, "fkoji" => 400}
p scores1
puts scores1
print scores1
p scores1["taguchi"]
p scores1[:taguchi]

scores2 = {:taguchi => 300, :fkoji => 400}
p scores2
puts scores2
print scores2
p scores2["taguchi"]
p scores2[:taguchi]

scores3 = {taguchi: 300, fkoji: 400}
p scores3
puts scores3
print scores3
p scores3["taguchi"]
p scores3[:taguchi]

p scores2.size
p scores2.keys
p scores2.values
p scores2.has_key?(:taguchi)

p scores2.to_a
p scores2.to_a.to_h

x = 50
y = "3"
p x + y.to_i
p x + y.to_f
p x.to_s + y

puts "he\"llo"
puts 'he\'llo'

puts %Q(he"llo)
puts %(he"llo)
puts %q(he'llo)

p ["red", "blue"]
p ['red', 'blue']

p %W(red blue)
p %w(red blue)

# "文字列" % 値
# %s
# %d
# %f

name = "taguchi"
p "name: %s" % "taguchi"
p "name: %10s" % "#{name}"
p "name: %-10s" % "taguchi"

p "id: %05d, rate: %10.2f" % [355, 3.284]

# printf
# sprintf

sprintf("name: %10s\n", "taguchi")
p sprintf("name: %10s\n", "taguchi")
sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)
p sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)


# while
#
i = 0
while i < 10 do
  puts "#{i}: hello"
  # i = i + 1
  i += 1
end

# times

10.times do |i|
  puts "#{i}: hello"
end

10.times { |i| puts "#{i}: hello" }


(15..20).each do |i|
  p i
end

["red", "blue"].each do |color|
  p color
end

for i in {taguchi:200, fkoji:400} do
  puts i
end

for name, score in {taguchi:200, fkoji:400} do
  puts "#{name}: #{score}"
end

{taguchi:200, fkoji:400}.each do |i|
  puts i
end

{taguchi:200, fkoji:400}.each do |name, score|
  puts "#{name}: #{score}"
end






# クラス
# - クラスメソッド
# - クラス変数
# - 定数


class User

  attr_accessor :name
  # attr_reader :name
  # setter: name=(value)
  # getter: name

  def initialize(name)
    @name = name
  end

  def sayHi
    # self
    # self.name -> @name
    puts "hi! i am #{@name}"
    puts "hi! i am #{self.name}"
    puts "hi! i am #{name}"
  end

end

tom = User.new("tom")

tom.name = "tom Jr."
p tom.name

tom.sayHi # レシーバー



class User2

  @@count = 0

  VERSION = 1.1

  def initialize(name)
    @@count += 1
    @name = name
  end

  def sayHi
    puts "hi! i am #{@name}"
  end

  def self.info
    puts "#{VERSION}: User2 Class, #{@@count} instances."
  end

end

tom = User2.new("tom")
bob = User2.new("bob")
steve = User2.new("steve")
User2.info
p User2::VERSION
