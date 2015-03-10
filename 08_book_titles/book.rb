class Book
  attr_accessor :title

  def title
    conjuctions = %W[and the in of for a an]
    @title.split(" ").each_with_index.map { |word, index| !conjuctions.include?(word) || index == 0 ? word.capitalize : word }.join(" ")
  end

end