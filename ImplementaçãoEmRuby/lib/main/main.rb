# frozen_string_literal: true

require_relative '../methods/methods'
# Classe principal
class Main
  # Objeto instanciado com a classe Methods
  m = Methods.new

  puts "\n \n"

  puts '~=~=~=~=~=~= Integração numérica =~=~=~=~=~=~'
  puts '  Função escolhida f(x) = 3e^{-t}sin(\pi t)'
  puts '  Limites de integração : [0, 1]'
  puts "\n"
  # Caso queira utilizar o método não iterativo, remova o '=begin' e o '=end'
=begin
  Caso não iterativo
  # Método do retângulo composto
  puts '### Método do retângulo composto ###'
  puts "\n"

  # Número de intervalos
  n = 369
  puts "  Número de intervalos: N = #{n}"

  # Retornando o resultado da integração numérica com o método
  puts "  Resultado da integração numérica: #{m.rectangle(0, 1, n)}"
  puts "\n"
  puts '#########'

  puts "\n \n"

  # Método do Ponto Central composto
  puts '### Método do ponto central ###'
  puts "\n"

  # Número de intervalos
  n = 369
  puts "  Número de intervalos: N = #{n}"

  # Retornando o resultado da integração numérica com o método
  puts "  Resultado da integração numérica: #{m.central_point(0, 1, n)}"
  puts "\n"
  puts '#########'

  puts "\n \n"

  # Método trapezoidal composto
  puts '### Método trapezoidal composto ###'
  puts "\n"

  # Número de intervalos
  n = 369
  puts "  Número de intervalos: N = #{n}"

  # Retornando o resultado da intergração numérica com o método
  puts "  Resultado da integração numérica: #{m.trapezoid(0, 1, n)}"
  puts "\n"
  puts '#########'
=end

  # Método do retângulo composto (iterativo)
  puts '### Método do retângulo composto (iterativo) ###'
  puts "\n"
  # Erro escolhido
  err = 0.003
  puts "  O erro escolhido foi: #{err}"
  # Retornando o resultado da integração numérica com o método
  puts "  Resultado da integração numérica: #{m.rectangle_ite(0, 1, err)}"
  puts "\n"
  puts '#########'
  puts "\n \n"

  # Método trapezóide composto (iterativo)
  puts '### Método trapezóide composto (iterativo) ###'
  puts "\n"
  # Erro escolhido
  puts "  O erro escolhido foi: #{err}"
  # Retornando o resultado da integração numérica com o método
  puts "  Resultado da integração numérica: #{m.trapezoid_ite(0, 1, err)}"
  puts "\n"
  puts '#########'

  puts "\n \n"

  # Final
  puts '~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~'
  puts "\n \n"
end
