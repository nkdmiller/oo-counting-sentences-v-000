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
    sentence_num = 0

    array = []
    array = self.split(/[!.?]/)
    array.reject! { |x| x.empty? }
    sentence_num = array.length
    sentence_num
  end
end
