# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, array)
  sorted_word = word.chars.sort
  array.filter { |w| sorted_word == w.chars.sort }
end
# END
