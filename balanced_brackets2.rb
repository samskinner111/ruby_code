### Are the brackets in a string balanced (i.e., nested open/close)?  Better method.

# s = '{([()])}' #yes
# s = '}][}}(}][))]' #no
# s = '[](){()}' #no
# s = '()'  #yes
# s = '({}([][]))[]()' #no
 s = '{)[](}]}]}))}(())(' #no

def test_parens(s)
  if s[0] == '(' && s[-1] == ')'
    s.slice!(-1)
    s.slice!(0)
  end
end

def test_curlies(s)
  if s[0] == '{' && s[-1] == '}'
    s.slice!(-1)
    s.slice!(0)
  end
end

def test_squares(s)
  if s[0] == '[' && s[-1] == ']'
    s.slice!(-1)
    s.slice!(0)
  end
end

(s.length/2).times do
  if s.length%2 != 0
    break
  else
    test_parens(s)
    test_curlies(s) 
    test_squares(s)
  end
end

s.empty? ? puts("YES") : puts("NO")