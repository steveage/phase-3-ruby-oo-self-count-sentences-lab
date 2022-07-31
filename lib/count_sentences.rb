require 'pry'

class String

  def sentence?
    ends_with?(".") 
  end

  def question?
    ends_with?("?")
  end

  def exclamation?
    ends_with?("!")
  end

  def ends_with?(character)
    self.end_with?(character)
  end

  def count_sentences
    pattern = "[.!?](?=[\w ])"
    regexp = Regexp.new(pattern)
    self.split(regexp).length()
  end
end