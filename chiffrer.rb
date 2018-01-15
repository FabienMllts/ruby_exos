def ceasar_cipher (string, decalage)
	decalage %=26

	new_array = string.split('').map! do |x|
		 x.match(/[a-zA-Z]/) ? x = x.ord : x

		 if x.class == Fixnum && (x <= 90 && x > 90 - decalage || x > 122- decalage)
		 	x = x + decalage - 26
		 elsif x.class == Fixnum
		 	x = x + decalage+
		 else
		 	x
		 end

		 x.class == Fixnum ? x.chr : x
	end
	puts new_array.join
end

ceasar_cipher("What a string", 3)