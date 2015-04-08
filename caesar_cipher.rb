#Objectives
#1. Make hash containing letters(keys) and their corresponding numbers(values).
#2. Make an inverse of that hash.
#3. Find a way to grab the values in the hash from the letters in the string.
#4. Make the shift.
#5. Grab the letters from the inverse hash with the new value shift.
#6. Return a new string with that shift.
#7. Done!

def caesar_cipher string,shift
	alphabet = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6, "h" => 7, "i" => 8, "j" => 9, "k" => 10, "l" => 11, "m" => 12, "n" => 13, "o" => 14, "p" => 15, "q" => 16, "r" => 17, "s" => 18, "t" => 19, "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24, "z" => 25, "A" => 26, "B" => 27, "C" => 28, "D" => 29, "E" => 30, "F" => 31, "G" => 32, "H" => 33, "I" => 34, "J" => 35, "K" => 36, "L" => 37, "M" => 38, "N" => 39, "O" => 40, "P" => 41, "Q" => 42, "R" => 43, "S" => 44, "T" => 45, "U" => 46, "V" => 47, "W" => 48, "X" => 49, "Y" => 50, "Z" => 51} 
	code = {0 => "a" , 1 => "b", 2 => "c", 3 => "d", 4 => "e", 5 => "f", 6 => "g", 7 => "h", 8 => "i", 9 => "j", 10 => "k", 11 => "l", 12 => "m", 13 => "n", 14 => "o", 15 => "p", 16 => "q", 17 => "r", 18 => "s", 19 => "t", 20 => "u", 21 => "v", 22 => "w", 23 => "x", 24 => "y", 25 => "z", 26 => "A", 27 => "B", 28 => "C", 29 => "D", 30 => "E", 31 => "F", 32 => "G", 33 => "H", 34 => "I", 35 => "J", 36 => "K", 37 => "L", 38 => "M", 39 => "N", 40 => "O", 41 => "P", 42 => "Q", 43 => "R", 44 => "S", 45 => "T", 46 => "U", 47 => "V", 48 => "W", 49 => "X", 50 => "Y", 51 => "Z"} 

	letters = string.split("")
	values = []
	new_letters = []

	letters.each do |letter|
		if alphabet.include?(letter) 
			values << alphabet[letter]
		else
			values << letter 
		end  
	end

	values.each do |value|
		if code.include?(value)
			if (value <= 25) && ((value + shift) > 25)
				value = (value + shift) - 25
			elsif (value >= 26) && ((value + shift) > 51)
				value = (value + shift) - 26
			else
				value += shift
			end

			new_letters << code[value]

		else
			new_letters << value
		end
	end

	p new_letters.join("")
end


caesar_cipher("What a string!", 5)