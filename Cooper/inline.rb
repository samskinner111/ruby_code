 module Inline class Ruby < Inline::C def initialize(mod) super end

  def optimize(meth)
    src = RubyToC.translate(@mod, meth)
    @mod.class_eval "alias :#{meth}_slow :#{meth}"
    @mod.class_eval "remove_method :#{meth}"
    c src
  end
end   end
#This allows me to do:

require ‘inline’ 
class MyTest

def factorial(n)
  f = 1
  n.downto(2) { |x| f *= x }
  f
end
  
inline(:Ruby) do |builder|
  builder.optimize :factorial
end   end