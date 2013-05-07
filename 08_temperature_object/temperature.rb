class Temperature
  def initialize(args)
    @f = args[:f]
    @c = args[:c]
  end

  def in_fahrenheit
    @f.nil? ? ctof(@c) : @f
  end

  def in_celsius
    @c.nil? ? ftoc(@f) : @c
  end

  def self.from_celsius(c)
    new c: c
  end

  def self.from_fahrenheit(f)
    new f: f
  end

  def ftoc(f)
    5.0 / 9 * (f - 32)
  end

  def ctof(c)
    32 + 9.0 / 5 * c
  end
end

class Celsius < Temperature

  def initialize(celsius)
    super c: celsius
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super f: fahrenheit
  end
end