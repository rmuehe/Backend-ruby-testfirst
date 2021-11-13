# Write a program hangman.rb that contains a function called hangman. The function's parameters are a word and an array of letters. It returns a string showing the letters that have been guessed. Call the function from within your program so that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b" Example: hangman("alphabet",["a","h"]) should return "a__ha___"

def hangman(word, letter_arr)
  word.split("").map {|char|
    letter_arr.any? {|x| x.upcase == char.upcase} ? char : '_'
  }.join("")
end

# puts hangman("bob", ['b'])
# puts hangman("alphabet", ['a', 'h'])