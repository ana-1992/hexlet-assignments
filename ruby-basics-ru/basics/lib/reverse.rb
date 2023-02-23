# frozen_string_literal: true

# BEGIN
def reverse(sentence)
  result = ''
  sentence.each_char do |char|
    result = "#{char}#{result}"
  end
  result
end
# END
