def translate(string)
  string.split(" ").map do |stringgy|
    if stringgy[0].match(/[aeiou]/)
      stringgy + "ay"
    else
      cons_num = 0
      until stringgy[cons_num].match(/[aeiou]/)
        cons_num += 1
      end

      cons_num = 2 if stringgy[0..1] == "qu"
      cons_num = 3 if !stringgy[0].match(/[aeiou]/) && stringgy[1..2] == "qu"

      modified_string = stringgy.delete(stringgy.slice(0, cons_num))
      modified_string + stringgy.slice(0, cons_num) + "ay"
    end
  end.join(" ")
end