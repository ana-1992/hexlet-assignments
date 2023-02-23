# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  words = text.split
  result = ''
  for word in words do
    result += stop_words.include?(word) ? '$#%! ' : "#{word} "
  end
  result.strip!
  # END
end

# rubocop:enable Style/For
