def substringer(str, dict)
  str_words = str.split(' ')

  str_words.each_with_object(Hash.new(0)) do |word, count|
    count[word] += 1 if dict.include?(word)
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substringer('below down it low low', dictionary)
