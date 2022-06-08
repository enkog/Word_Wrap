class Wrapper
  LINE_BREAK = "<br />"

  def self.wrap(col_size, input_str)
    if (input_str.length == 0)
      return LINE_BREAK
    end

    if (input_str.length <= col_size)
      return input_str << LINE_BREAK
    end

    line_str = ""
    full_str = ""

    words_arr = input_str.split

    words_arr.each do |word|
      word = word.strip
      total_line_len = line_str.length + word.length

      if (total_line_len > col_size)
        full_str << line_str << LINE_BREAK
        line_str = ""
      end
      line_str << word << " "
    end

    if (line_str.length > 0)
      full_str << line_str
    end

    return full_str
  end
end
