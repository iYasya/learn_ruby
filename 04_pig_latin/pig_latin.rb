def translateWord(word)
	isTitle = false
	if word[0] == word[0].upcase
		isTitle = true
		word.downcase
	end
	
	result = ""
	
	if word[0..1] == "qu" 
		result = word[2..-1]+"quay"
	elsif word[0..2] == "squ"
		result = word[3..-1]+"squay"
	elsif word[0..2] == "sch"
		result = word[3..-1]+"schay"
	else
		separator = word.index(/[aeiou]/)
		result = word[separator..-1] + word[0, separator] + "ay"
	end

	isTitle ? result.capitalize : result
end

def translate(message)
	message.split.map(&method(:translateWord)).join(' ')
end