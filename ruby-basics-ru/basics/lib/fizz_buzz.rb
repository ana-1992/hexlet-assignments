# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return nil if start > stop

  (start..stop).map do |num|
    fizz = (num % 3).zero?
    buzz = (num % 5).zero?
    if fizz && buzz
      'FizzBuzz'
    elsif fizz
      'Fizz'
    elsif buzz
      'Buzz'
    else
      num
    end
  end
               .join(' ')
end
# END
