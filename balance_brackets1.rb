### Are the brackets in a string balanced (i.e., nested open/close brackets)?

s = '{[(])}'
l= s.length
y = true

def test_parens(i, s, l)
  return true if s[i] == '(' && s[l-1-i] == ')'
  false
end

def test_curlies(i, s, l)
  return true if s[i] == '[' && s[l-1-i] == ']'
  false
end

def test_squares(i, s, l)
  return true if s[i] == '{' && s[l-1-i] == '}'
  false
end

if s.length%2 != 0
  y = false
else
  (l/2).times do |i|
    v1 = test_parens(i, s, l)
    v2 = test_curlies(i, s, l) 
    v3 = test_squares(i, s, l)
    if v1 == false && v2 == false && v3 == false
      y = false 
      break
    else
    end
  end
end

y == false ? puts("NO") : puts("YES")