### Module versus Class.  What is the output (e.g., python python, python tiger, etc.)?
  # Use of the global variable (Animal) is needed.  Note line 11 -the print statement.

Animal = 'tiger'

module Foo
  Animal = 'python'
  class Bar
    def val1
      t = "are cool!"
      print Animal, 's', " ", t, ' '
    end
  end
end

class Foo::Bar
  def val2
      print Animal, " "
  end
end

Foo::Bar.new.val1
Foo::Bar.new.val2
puts