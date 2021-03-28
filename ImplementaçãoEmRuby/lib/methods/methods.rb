# frozen_string_literal: true

require_relative '../function/function'
# Classe para os métodos utilizados
class Methods
  include Function

  # Método do retângulo composto
  def rectangle(initial, final, n_interval, opc = 'i')
    # Passo
    h_size = (final - initial) / n_interval.to_f
    # Escolha, ponto inicial ou final?
    initial += h_size if opc == 'f'
    # Ponto da vez
    point = 1
    # Resultado da integração numérica
    result = 0
    # Laço principal
    while point <= n_interval
      # Somatório
      result += h_size * Function.f(initial)
      # Incremento na variável 'x'
      initial += h_size
      # Ponto da vez
      point += 1
    end
    # Retornando o res ultado da integração numérica
    result
  end

  # Método do Ponto Central composto
  def central_point(initial, final, n_interval)
    # Passo
    h_size = (final - initial) / n_interval.to_f
    # Ponto da vez
    point = 1
    # Resultado da integração numérica
    result = 0
    # Laço principal
    while point <= n_interval
      result += h_size * Function.f((initial + (initial + h_size)) / 2)
      initial += h_size
      point += 1
    end
    result # Retornando o resultado
  end

  # Método Trapezoidal composto
  def trapezoid(initial, final, n_interval)
    # Passo
    h_size = (final - initial) / n_interval.to_f
    # Ponto da vez
    point = 1
    # Ponto inicial
    a = initial
    # Resultado da integração numérica
    result = 0
    # Laço principal
    while point <= n_interval
      result += h_size * Function.f(initial)
      initial += h_size
      point += 1
    end
    result += h_size * (Function.f(a) + Function.f(final)) / 2
    result # Retornando o resultado 
  end
end
