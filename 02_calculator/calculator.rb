def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(numbers)
	sum = 0
	numbers.each{|x| sum += x}
	sum	
end

def multiply(*numbers)
	mul = 1
	numbers.each{|x| mul *= x}
	mul
end

def power(a, b)
	a ** b
end

def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end