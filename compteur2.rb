
def compter()
	puts "enter your text: "
	text = gets.chomp

	words = text.split(" ")
	frequencies = Hash.new(0)
	words.each { |words| frequencies[words] +=1 }
	frequencies = frequencies.sort_by { |words, frequencies| }
	frequencies.reverse!
	frequencies.each { |words, frequencies|
		puts words + " " + frequencies.to_s 
	}
end
puts compter()