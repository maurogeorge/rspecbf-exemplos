RSpec::Matchers.define :valida_presenca_de_string do |attr|

  match do |sujeito|
    verifica_vazio?(sujeito, attr) &&
    verifica_preenchido?(sujeito, attr)
  end

  failure_message do |sujeito|
    "experava-se que #{actual} tivesse validação de presencça em #{attr}"
  end

  failure_message_when_negated do |actual|
    "experava-se que #{actual} não tivesse validação de presença em #{attr}"
  end

  description do
    "valida presença do #{attr}"
  end

  def verifica_vazio?(sujeito, attr)
    instancia = sujeito.new
    instancia.valid?
    instancia.errors[attr].include?('não pode ficar em branco')
  end

  def verifica_preenchido?(sujeito, attr)
    params = {}
    params[attr] = 'Charizard'
    instancia = sujeito.new(params)
    instancia.valid?
    instancia.errors[attr].empty?
  end
end
