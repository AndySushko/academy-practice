def work_with_text(word)
    if word.downcase[-2..-1] == 'cs'
      2**(word.length)
    else
      word.reverse
    end
  end