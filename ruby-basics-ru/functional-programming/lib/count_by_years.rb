# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.each_with_object([]) do |user, acc|
    acc << user[:birthday][0...4] if user[:gender] == 'male'
  end
       .tally
end
# END
