require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence = self.split(/[?.!]/)
    num = sentence.count {|word| word.length > 0}
    binding.pry 
  end
end

"HI? How Are You? I am Fine!!! Woo...".count_sentences
