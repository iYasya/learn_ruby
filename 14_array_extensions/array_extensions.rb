class Array
  def sum
    result = 0
    self.each{|x| result += x}
    result
  end
  
  def square
    result = []
    self.each {|x| result << x**2}
    result
  end
  
  def square!
    self.collect! {|x| x**2}
  end
end