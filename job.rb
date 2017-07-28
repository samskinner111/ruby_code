# Ticket Alternative
a = []
b = %w[If a faf o fa i e fA e a i e;fI' ou a]
c = %w[n! rfm  mfy v t rn lt t ck tfT b j nt w x pe q]
a << b.zip(c.reverse.drop(3)).flatten.join.gsub('f', ' ')
puts a

# Manheim
a = []
b = %w[If a faf o fa a e m;fI' ou a]
c = %w[n! rfm  mfy i nh tfM b j nt w x pe q]
a << b.zip(c.reverse.drop(3)).flatten.join.gsub('f', ' ')
puts a

# Chargify
a = []
b = %w[Iz a zaz o za h g fy;zI' ou a]
c = %w[n! rzm  mzy i ar tzC b j nt w x pe q]
a << b.zip(c.reverse.drop(3)).flatten.join.gsub('z', ' ')
p a  # code to fit 150 characters
puts a  # better output
        
# Rigor
a = []
b = %w[I ve fjo tfRi r;fI u y!]
d = %w[rfgu 'mfyo go bfa fa 'dflo qm pe xt]
a << b.zip(d.reverse.drop(3)).flatten.join.gsub('f', ' ')
puts a
# repeats a three times 
a.cycle(3) { |s| puts s }      

## Find the sum of all integers divisible by 3 or 5 and less than 1001
a = []
1000.times { |n| a << n if n%5 == 0 || n%3 == 0 }
sum = a.reduce(:+)
print sum; puts ", The sum is: #{sum}."

puts

## Count the number of 'xxx' in a string
puts 'xxxabcxxxxxxyxxxxafaf'.scan(/(?=xxx)/).length

i=0
string = 'xxxabcxxxxxxyxxxxafaf'
num = string.length
num.times do |y|
	i += 1 if string[y] == 'x' && string[y+1] == 'x' && string[y+2] == 'x'
end
puts "There are #{i} 'xxx' sequences in this string."
puts

##Convert Roman numerals into alphanumeric (my regex method).
def convert_roman_numerals_into_arabic string

  sumM = string.scan(/(?=M)/).length * 1000
  sumD = string.scan(/(?=D)/).length * 500
  sumC = string.scan(/(?=C)/).length * 100
  sumL = string.scan(/(?=L)/).length * 50
  sumX = string.scan(/(?=X)/).length * 10
  sumV = string.scan(/(?=V)/).length * 5
  sumI = string.scan(/(?=I)/).length * 1

  subM = string.scan(/(?=CM)/).length * -200
  subD = string.scan(/(?=CD)/).length * -200  
  subC = string.scan(/(?=XC)/).length * -20
  subL = string.scan(/(?=XL)/).length * -20
  subX = string.scan(/(?=IX)/).length * -2
  subV = string.scan(/(?=IV)/).length * -2

  sum = sumM + sumD + sumC + sumL + sumX + sumV + sumI + subM + subD + subC + subL + subX + subV
end

puts convert_roman_numerals_into_arabic('MCMXC')

## Nice internet method
@data = [
    ["M"  , 1000],
    ["CM" , 900],
    ["D"  , 500],
    ["CD" , 400],
    ["C"  , 100],
    ["XC" ,  90],
    ["L"  ,  50],
    ["XL" ,  40],
    ["X"  ,  10],
    ["IX" ,   9],
    ["V"  ,   5],
    ["IV" ,   4],
    ["I"  ,   1]
    ]

def toArabic(rom)
  reply = 0
  for key, value in @data
    while rom.index(key) == 0
      reply += value
      rom.slice!(key)
    end
  end
  reply
end

puts toArabic 'MCMXC'

puts
## Playing with beer bottles
5.downto(2) { |n| puts "#{n.to_s} bottles of beer on the wall,
#{n.to_s} bottles of beer,
You take one down, pass it around,
#{(n-1).to_s} bottles of beer on the wall."
puts}

puts "1 bottle of beer on the wall,
1 bottle of beer,
You take one down, pass it around,
No bottles of beer on the wall.
Whew!  At last!"

puts

## Write a method to reverse a string
def reverse(s)
  s.reverse
end

 ax = '123456'
 puts reverse(ax)
 
## Write a method to classify and count the characters in a string
def character_count(string) 
  string.chars.group_by(&:chr).map { |character, count| [character, count.size] }
end

ay = "The cat in the hat is fat.  The hat on the cat is tall."
print character_count(ay); puts

