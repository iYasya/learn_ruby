def echo(message)
	message
end

def shout(message)
	message.upcase
end

def repeat(message, count = 2)
	result = message
	(1..count - 1).each {result += " " + message}
	result
end

def start_of_word(message, length)
	message[0, length]
end

def first_word(message)
	message.split[0]
end

def titleize(message)
	lowercase_words = %w{a an the and but or for nor of over}
	message.split.each_with_index
		.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(' ')
end