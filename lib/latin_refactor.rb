def pig_refactor(word)
  prefix = word[0, %w(a e i o u).map{|vowel| "#{word}aeiou".index(vowel)}.min]
  prefix = 'qu'

  if word[0,2] == 'qu'prefix.length == 0 ? "# {word}way" 
    : "# {word[prefix.length..-1]}# {prefix}ay"
  end
  
  phrase = word
  translated = phrase.scan(/\w+/).map{|word|
    pig_refactor(word)}.join(" ")

  translated
end
