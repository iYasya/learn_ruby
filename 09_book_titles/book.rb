class Book
  def title=(message)
    lowercase_words = %w{a an the and but or for nor of so yet in at since ago before to by over}
    @title = message.split.each_with_index
    .map{|x, index| lowercase_words.include?(x) && index > 0 && x != 'I' ? x : x.capitalize }.join(' ')
  end

  def title
    @title
  end
end