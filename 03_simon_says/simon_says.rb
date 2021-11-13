def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num_of_times = 2)
  repeat_str = string
  (num_of_times - 1).times {repeat_str += " " + string}
  repeat_str
end

def start_of_word(word_str, num_of_letters)
  word_str[0, num_of_letters]
end

def first_word(words_str)
  words_str.split(" ").first
end  

def titleize(title_str)
  little_words_arr = ["and", "the", "over"]
  title_arr = title_str.split(" ")
  first_word_str = title_arr.shift.capitalize
  title_arr.map! {|word|
    little_words_arr.include?(word) ? word : word.capitalize
    }.unshift(first_word_str)
    .join(" ")
end