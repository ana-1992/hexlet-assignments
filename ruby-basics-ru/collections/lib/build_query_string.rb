# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  query = []
  params.sort.each { |key, value| query << "#{key}=#{value}" }
  query.join('&')
end
# END
