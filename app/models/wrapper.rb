class Wrapper
  LINE_BREAK = '<br>'.freeze

  # create static method
  def self.wrap(col_size, input_str)
    # handle null input
    return LINE_BREAK if input_str.length.zero?

    # do nothing for input not longer than col_size
    return input_str << LINE_BREAK if input_str.length <= col_size

    # initialize variables
    line_str = ''
    full_str = ''

    # make an array of words from input
    words_arr = input_str.split

    words_arr.each do |word|
      # remove trailing spaces
      word = word.strip

      # compute length of line so far
      total_line_len = line_str.length + word.length

      # break at word boundary
      if total_line_len > col_size
        # update result
        full_str << line_str << LINE_BREAK
        # reset for new line
        line_str = ''
      end

      # append word to line
      line_str << word << ' '
    end

    # append last line to result if exists
    full_str << line_str if line_str.length.positive?

    # return result
    full_str
  end
end
