class Wrapper
  LINE_BREAK = '<br />'.freeze

  def self.wrap(col_size, input_str)
    return LINE_BREAK if input_str.length.zero?

    return input_str << LINE_BREAK if input_str.length <= col_size

    line_str = ''
    full_str = ''

    words_arr = input_str.split

    words_arr.each do |word|
      word = word.strip
      total_line_len = line_str.length + word.length

      if total_line_len > col_size
        full_str << line_str << LINE_BREAK
        line_str = ''
      end
      line_str << word << ' '
    end

    full_str << line_str if line_str.length.positive?

    full_str
  end
end
