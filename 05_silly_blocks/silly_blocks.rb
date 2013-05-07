def reverser
	yield.split.map(&:reverse!).join(' ')
end

def adder(x=1)
	yield + x
end

def repeater(count=1)
	(1..count).each do
		yield
	end
end