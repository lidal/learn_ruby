def translate message
	vowels = ["a", "e", "i", "o", "u"]
	words = message.split
	pig_words = [] #the array of words in pig latin
	words.each do |word|
		if vowels.index(word[0]) != nil #is the first letter a vowel
			pig_words << word + "ay" #the rule for vowel firs
		else
			
			searching = true
			i = 0 #set up a counter
			while (searching) #find where the consonants stop
				if word[i-1] == "q" and word[i] == "u"
					searching = false
					i += 1
				elsif vowels.index(word[i]) != nil 
					searching = false
				else
					i += 1
				end
			end
			pig_words << word.slice(i, word.length) +
				word.slice(0,i) + "ay"#rule for consonant first
		end
	end
	pig_words.join(" ")
end