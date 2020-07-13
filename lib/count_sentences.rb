require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      false
    end
  end

  def count_sentences
    sentences = self.split(/[!?.]/)
    sentences.delete_if{|sentence| sentence.empty?}
    sentences.length
  end
end
