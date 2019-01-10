require 'function/composite'

using Function::Composite

class Function::CompositeTest < Test::Unit::TestCase
  def test_that_it_has_a_version_number
    assert_not_nil ::Function::Composite::VERSION
  end

  def test_symbol_to_symbol
    result = %w{72 101 108 108 111}.map(&:to_i >> :chr)
    assert_equal(["H", "e", "l", "l", "o"], result)
  end

  def test_symbol_from_symbol
    result = %w{72 101 108 108 111}.map(&:chr << :to_i)
    assert_equal(["H", "e", "l", "l", "o"], result)
  end

  def test_proc_to_symbol
    result = %w{72 101 108 108 111}.map(&proc {|s| s.to_i} >> :chr)
    assert_equal(["H", "e", "l", "l", "o"], result)
  end

  def test_symbol_from_proc
    result = %w{72 101 108 108 111}.map(&:chr << proc {|s| s.to_i})
    assert_equal(["H", "e", "l", "l", "o"], result)
  end

  def test_method_to_symbol
    result = %w{72 101 108 108 111}.map(&method(:int) >> :chr)
    assert_equal(["H", "e", "l", "l", "o"], result)
  end

  def test_symbol_from_method
    result = %w{72 101 108 108 111}.map(&:chr << method(:int))
    assert_equal(["H", "e", "l", "l", "o"], result)
  end

  def test_symbol_to_callable
    h = {Alice: 30, Bob: 60, Cris: 90}
    result = %w{Alice Bob Cris}.map(&(:to_sym >> h))
    assert_equal([30, 60, 90], result)
  end

  def int(s) s.to_i end
end
