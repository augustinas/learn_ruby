def translate(string)
  string.split(" ").map do |stringgy|
    if stringgy[0].match(/[aeiou]/)
      stringgy + "ay"
    else
      first_vowel = stringgy.index(/[aeiou]/)
      if stringgy[first_vowel-1..first_vowel] == "qu"
        stringgy[first_vowel+1..-1] + stringgy[0..first_vowel] + "ay"
      else
        stringgy[first_vowel..-1] + stringgy[0..first_vowel-1] + "ay"
      end
    end
  end.join(" ")
end