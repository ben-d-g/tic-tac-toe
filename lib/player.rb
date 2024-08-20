class Player
  def initialize(glyph, name = "Player")
    @glyph = glyph
    @name = name
  end

  def get_glyph()
    return @glyph
  end

  def get_name()
    return @name
  end
end