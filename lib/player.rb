# frozen_string_literal: true

class Player
  def initialize(glyph, name = 'Player')
    @glyph = glyph
    @name = name
  end

  def get_glyph
    @glyph
  end

  def get_name
    @name
  end
end
