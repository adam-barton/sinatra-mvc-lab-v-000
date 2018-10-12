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
        word  = word + w
        elsif word[0, 1].consonant?
          word - word[0, 1]

      if word.length == 1
        word + way
      elsif word[0].match(/aAeEiIoOuU/)
        word+w
      end
      word + ay

  end


end
