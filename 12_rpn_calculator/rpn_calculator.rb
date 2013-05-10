class RPNCalculator
  attr_accessor :arr

  def initialize
    @arr = []
  end

  def push(number)
    @arr << number.to_f
  end

  def plus
    fails?
    @arr << @arr.pop+@arr.pop
  end

  def minus
    fails?
    @arr << @arr.pop-@arr.pop
  end

  def times
    fails?
    @arr << @arr.pop*@arr.pop
  end

  def divide
    fails?
    @arr << @arr.pop/@arr.pop
  end

  def value
    @arr[-1]
  end

  def fails?
    if @arr.size < 2
      raise 'calculator is empty'
    end
  end

  def tokens(message)
    token = []
    message.split.map do |x|
      if x =~ /[- + \/ *]/
        token << :"#{x}"
      else
        token << x.to_f
      end
    end
    token
  end

  def evaluate(string)
    tokens(string).each do |x|
      if x == :+
        plus
      elsif x == :-
        minus
      elsif x == :/
        divide
      elsif x == :*
        times
      else
        push(x)
      end
    end
    value
  end
end