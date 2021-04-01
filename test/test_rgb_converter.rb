require 'minitest/autorun'
require_relative '../lib/rgb_converter'

class TestRgbConverter < Minitest::Test
  def setup
    @rgb_converter = RgbConverter.new
  end

  def test_3つの10進数を16進数の文字列に変換できる
    assert_equal('#000000', @rgb_converter.to_hex(0, 0, 0))
    assert_equal('#ffffff', @rgb_converter.to_hex(255, 255, 255))
  end

  def test_16進数の文字列を3つの10進数の配列に変換できる
    assert_equal(@rgb_converter.to_ints([0, 0, 0]), '#000000')
    assert_equal(@rgb_converter.to_ints([255, 255, 255]), '#ffffff')
  end
end