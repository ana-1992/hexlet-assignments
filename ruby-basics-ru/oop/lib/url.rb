# frozen_string_literal: true
require 'forwardable'
require 'uri'

# BEGIN
class Url
  extend Forwardable
  extend Comparable

  attr_accessor :url
  def_delegators :@url, :host, :scheme, :port, :query

  def initialize(url)
    @url = URI(url)
  end
 
  def query_params
    return {} if url.query.nil?

    url.query.split('&').each_with_object({}) do |params, result|
      key, value = params.split('=')
      result[key.to_sym] = value
    end
  end

  def query_param(key, default_value = nil)
    query_params[key].nil? ? default_value : query_params[key]
  end

  def ==(new_url)
   url.host == new_url.host &&
   url.scheme == new_url.scheme &&
   query_params == new_url.query_params &&
   url.port == new_url.port
  end
end
# END
