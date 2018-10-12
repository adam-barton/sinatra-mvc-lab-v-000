require 'iglatinpay'
require 'pry'


class PigLatinizer


  # def translate(text)
  #   # text.to_piglatin
  # end

  def piglatinize(text)
    x = (text.split(" ").length == 1) ? latinize_word(text) : latinize_sentence(text)
    puts x
    x
  end

  def consonant?(character)
    !character.match(/aAeEiIoOuU/)
  end

  def vowel?(character)
    character.match(/aAeEiIoOuU/)
  end

  def latinize_word(word)
      if word[0].consonant?
        word  = word + "w"
        elsif word[0, 1].consonant?
          word = word.slice(2..-1) + word.slice(0,2)
        elsif word[0..2].consonant?
          word = word.slice(3..-1) + word.slice(0,3)
        else
          word = word.slice(1..-1) + word.slice(0)
      end
      word + "ay"
    end

  def latinize_sentence(sentence)
    sentence.split.collect { |word| latinize_word(word) }.join(" ")
  end


end
