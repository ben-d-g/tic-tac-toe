# frozen_string_literal: true

class Cell
  def initialize
    @value = '-'
  end

  def get_value
    @value
  end

  def set_value(value)
    @value = value
  end
end
