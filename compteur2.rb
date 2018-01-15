def jean_michel_data(corpus, dictionary)

	occurences = Hash.new(0) 

	#corpus : mettre tout en downcase et faire un split
	corpus_words = corpus.downcase.split(' ')

	#naviguer dans le dictionnaire
	dictionary.each do |dictionary_word|
		
		#naviger dans le corpus
		corpus_words.each do |corpus_word|
	
			#increment le hash si le mot est présent dans le dictionnaire
			occurences[dictionary_word] += 1 if corpus_word.include? dictionary_word

		end

	end

	return occurences
end

corpus = "Howdy partner, sit down! How's it going?"

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]	
puts jean_michel_data(corpus, dictionary)