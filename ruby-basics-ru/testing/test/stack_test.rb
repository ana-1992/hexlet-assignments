# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'


class StackTest < Minitest::Test
  # BEGIN
  def setup
    @stack = Stack.new( [1, 2, 3, 4, 5] )
  end
  def test_push
    assert { @stack.push!(6) == [1, 2, 3, 4, 5, 6] }
  end
  def test_delete
    assert { @stack.pop! == 5 }
  end
  def test_clear
    assert { @stack.clear! == [] }
  end
  def test_empty
    assert { @stack.empty? == false }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?

# добавления элемента
# удаления элемента
# очистки стека
# проверки стека на пустоту
