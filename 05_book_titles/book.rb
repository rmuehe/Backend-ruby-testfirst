class Book
  attr_writer :title

  def title 
    def capitalize(word_str)
      word_str[0] = word_str[0].upcase
      word_str
    end

    omit_arr = ["the", "a", "an", "and", "in", "of"]
    title_arr = @title.split(" ")
    title_arr.map! do |word|
      omit_arr.include?(word) ? word : capitalize(word)
    end
    title_arr[0] = capitalize(title_arr[0])
    @title = title_arr.join(" ")
  end
end
