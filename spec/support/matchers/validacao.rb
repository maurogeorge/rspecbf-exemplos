RSpec::Matchers.define :valida_presenca_de_string do |attr|

  match do |sujeito|
    verifica_vazio?(sujeito, attr) &&
    verifica_preenchido?(sujeito, attr)
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
