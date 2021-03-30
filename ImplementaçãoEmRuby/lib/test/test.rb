# frozen_string_literal: true

require_relative '../methods/methods'

# Classe para teste
class Test
  # Objeto instanciado com a classe Methods
  m = Methods.new

  puts "\n \n"

  puts '~=~=~=~=~=~= Integração numérica =~=~=~=~=~=~'
  puts '  Função escolhida f(x) = 3e^{-t}t^3'
  puts '  Limites de integração : [3, 9]'
  puts "\n"

  # Método do retângulo composto (iterativo)
  puts '### Método do retângulo composto (iterativo) ###'
  puts "\n"
  # Erro escolhido
  err = 0.003
  puts "  O erro escolhido foi: #{err}"
  # Retornando o resultado da integração numérica com o método
  puts "  Resultado da integração numérica: #{m.rectangle_ite(3, 9, err)}"
  puts "\n"
  puts '#########'
  puts "\n \n"

  # Método trapezóide composto (iterativo)
  puts '### Método trapezóide composto (iterativo) ###'
  puts "\n"
  # Erro escolhido
  puts "  O erro escolhido foi: #{err}"
  # Retornando o resultado da integração numérica com o método
  puts "  Resultado da integração numérica: #{m.trapezoid_ite(3, 9, err)}"
  puts "\n"
  puts '#########'

  puts "\n \n"

  # Final
  puts '~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~'
  puts "\n \n"

end
