# frozen_string_literal: true

require_relative '../function/function'
# Classe para os métodos utilizados
class Methods
  include Function
 
  CONST_E = Math.exp(1)
  CONST_PI = Math::PI

  # Função primária
  # [0, 1]
  # INT_REAL = (3 * CONST_PI / (CONST_PI**2 + 1)) * (1 / CONST_E + 1)
  # [0, 1/2]
  INT_REAL = (3 / (CONST_PI**2 + 1)) * ((-1 / Math.sqrt(CONST_E)) + CONST_PI)
  # Função de teste
  # INT_REAL = -3 * ((-78 / CONST_E**3) + (1032 / (CONST_E**9)))

  # Método do retângulo composto (iterativo)
  def rectangle_ite(initial, final, error, n_interval = 0)
    # Número de intervalo inicial (iteração)
    n_interval += 1
    # Resultado da integração numérica
    result = rectangle(initial, final, n_interval)
    # Calculando o erro para n_intervalo
    err_int = ((result - INT_REAL) / INT_REAL).abs
    # Verificando o erro
    if err_int > error
      # Caso o erro encontrado seja maior, uma nova iteração deve ser iniciada
      rectangle_ite(initial, final, error, n_interval)
    else
      # Caso o erro apresentado seja menor ou igual, retorna o valor encontrado
      puts n_interval
      result
    end
  end

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

  # Método Trapezoidal composto (iterativo)
  def trapezoid_ite(initial, final, error, n_interval = 0)
    # Número de intervalo inicial (iteração)
    n_interval += 1
    # Resultado da integração numérica
    result = trapezoid(initial, final, n_interval)
    # Calculando o erro para n_intervalo
    err_int = ((result - INT_REAL) / INT_REAL).abs
    # Verificando o erro
    if err_int > error
      # Caso o erro encontrado seja maior, uma nova iteração deve ser iniciada
      trapezoid_ite(initial, final, error, n_interval)
    else
      # Caso o erro apresentado seja menor ou igual, retorna o valor encontrado
      puts n_interval
      result
    end
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
    result += (h_size * (Function.f(a) + Function.f(final))) / 2
    result # Retornando o resultado
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
end
