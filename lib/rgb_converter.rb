class RgbConverter
  def to_hex(r, g, b)
    [r, g, b].inject('#') { |accum, current| accum + current.to_s(16).rjust(2, '0') }
  end

  def to_ints(rgb)
    []
  end
end
