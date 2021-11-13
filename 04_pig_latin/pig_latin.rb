############# Version 3 #############

VOWELS = %w[a e i o u]

def capitalized?(word_str)
  word_str[0] != word_str[0].downcase
end

def consonant_length(string)
  length = 0
  after_q = false 
  string.each_char do |char|
    VOWELS.include?(char) && !after_q ? break : length += 1
    after_q = char == 'q'
  end
  length
end  

def handle_consonants(string_arr)
  string = string_arr[0]
  length = consonant_length(string)
  consonant_str = string.slice!(0..length-1)
  string += consonant_str + "ay"
end

def pig_latinize(item)
  pig_latin_str = handle_consonants(item.scan(/[\w']+/))
  capitalized?(item) ? pig_latin_str.capitalize : pig_latin_str
end

def translate(word_str)
  word_str.split(" ")
    .map! {|word| word.scan(/[\w']+|[[:punct:]]+/)}
    .map! {|array| array.map! {|item|
      item.scan(/[\w']+/).length > 0 ? pig_latinize(item) : item
    }}.map! {|array| array.join("")}.join(" ")
end

############# Version 2 #############
# VOWELS = %w[a e i o u]

# # TODO handle punctuation

# # Split the words by spaces, 
# # then each space seperated value by punctuation. 
# # Store the punctuation and word in an array
# # translate the word, then join the punctuation back

# def capitalize(word_str)
#   word_str[0] = word_str[0].upcase
#   word_str
# end

# def capitalized?(word_str)
#   word_str[0] != word_str[0].downcase
# end

# def consonant_length(string)
#   length = 0
#   after_q = false 
#   string.each_char do |char|
#     VOWELS.include?(char) && !after_q ? break : length += 1
#     after_q = char == 'q'
#   end
#   length
# end  

# def handle_consonants(string)
#   length = consonant_length(string)
#   consonant_str = string.slice!(0..length-1)
#   string += consonant_str + "ay"
# end

# def translate(words_str)
#   words_arr = words_str.split(" ")
#   capitalized_arr = words_arr.map {|word| capitalized?(word)}
#   words_arr.map! {|word| word.downcase}
#   words_arr.map!.with_index do |word, index|
#       capitalized_arr[index] ?
#         capitalize(handle_consonants(word)) :
#         handle_consonants(word)
#   end
#   words_arr.join(" ")
# end

############# Version 1 #############

## TODO handle capitalized words
# VOWELS = %w[a e i o u]

# def consonant_length(string)
#   length = 0
#   after_q = false 
#   string.each_char do |char|
#     VOWELS.include?(char) && !after_q ? break : length += 1
#     after_q = char == 'q'
#   end
#   length
# end  

# def translate(words_str)
#   words_arr = words_str.split(" ")
#   words_arr.map! do |word|
#     if VOWELS.include?(word[0])
#       word += "ay"
#     else
#       length = consonant_length(word)
#       consonant_str = word.slice!(0..length-1)
#       word += consonant_str + "ay"
#     end
#   end
#   words_arr.join(" ")
# end


