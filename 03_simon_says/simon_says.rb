def echo message
	message
end

def shout message
	message.upcase
end

def repeat (message, n = 2)
	total_message = message
	i = n - 1
	i.times do |i|
		total_message += " " + message
	end
	total_message
end

def start_of_word (word, n)
	word.slice(0,n)
end

def first_word message
	message.split[0]
end

def titleize message
	split_message = message.split
	split_capitalize = []
	little_words = ["the", "and", "over"]
	split_message.each do |word|
		if little_words.index(word) == nil
			split_capitalize << word.capitalize
		else
			split_capitalize << word
		end
	end
	message_capitalized = split_capitalize.join(" ")
	message_capitalized[0] = message_capitalized[0].capitalize
	message_capitalizeds

end