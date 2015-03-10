def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, number=2)
  Array.new(number, string).join(" ")
end

def start_of_word(string, number)
  string.slice(0, number)
end

def first_word(string)
  string.split(" ").first
end

def titleize(string)
  small_words = ["the", "and", "over"]
  string.split(" ").each_with_index.map { |word, index| !small_words.include?(word) || index == 0 ? word.capitalize : word }.join(" ")
end