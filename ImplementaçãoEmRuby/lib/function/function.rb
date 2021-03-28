# frozen_string_literal: true

# Módulo que contém a função utilizada nos métodos
module Function
  CONST_E = Math.exp(1)
  CONST_PI = Math::PI

  def self.f(value)
    3 * (CONST_E**-value) * Math.sin(CONST_PI * value)
  end
end
