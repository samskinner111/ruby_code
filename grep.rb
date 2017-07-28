p (1..100).grep 38..44
puts
c = IO.constants
p c
puts


p c.grep(/FNM/)
puts
res = c.grep(/FNM/) { |v| IO.const_get(v) }
p res  