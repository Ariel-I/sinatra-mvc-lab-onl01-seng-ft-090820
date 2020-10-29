class PigLatinizer 

<<<<<<< HEAD
  def piglatinize_word(word)
    vowels = %w(a e i o u A E I O U)
    consonants = []
    if vowels.include?(word[0])
      @piglatin = word + "way"
    else
      letters = word.split('')
      until vowels.include?(letters[0])
        consonants << letters[0]
        letters.shift
      end
      @piglatin = letters + consonants << "ay"
    end
    @piglatin.class == Array ? @piglatin.join : @piglatin
  end

  def piglatinize_sentence(sentence)
    words = sentence.split(" ")
    piglatin = words.map {|word| piglatinize_word(word)}
    piglatin.join(" ")
  end

  def piglatinize(statement)
    if statement.split(" ").count == 1
      piglatinize_word(statement)
    else
      piglatinize_sentence(statement)
    end
  end
  
end
=======
 def piglatinize(word)
    vowels = %w{a e i o u}
    word.each_char do |chr|
      index = word.index(chr)
      if index != 0 && vowels.include?(chr.downcase)
        consonants = word.slice!(0..index-1)
        return word + consonants + "ay"
      elsif index == 0 && vowels.include?(chr.downcase)
        return word + "way"
      end
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect { |word| piglatinize(word) }.join(" ")
  end

  
end 
>>>>>>> 08449a952d119a1488fb4e7f5cbf69d5feeac7b6
