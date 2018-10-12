require 'iglatinpay'
require 'pry'


class PigLatinizer

  attr_reader :text

  def initialize

  end

  def piglatinize(text)
    text.to_piglatin

   text.splits(word)
  end

  def splits(word)
    @phrase = []
    @phrase << word.split
    latinized
  end

  def consonant?(character)
    !character.match(/aAeEiIoOuU/)
  end

  def vowel?(character)
    character.match(/aAeEiIoOuU/)
  end

  def latinized
    @phrase.map do |word|
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


end
