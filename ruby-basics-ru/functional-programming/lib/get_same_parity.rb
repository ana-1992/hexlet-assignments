# frozen_string_literal: true

# BEGIN
def get_same_parity(list)
  first_element, *_elements = list
  list.filter { |el| first_element.even? == el.even? }
end
# END
