shared_examples 'valida presenca de string' do |klass, attr|

  describe "#{attr}" do

    it 'possui erro quando está vázio' do
      instancia = klass.new
      instancia.valid?
      expect(instancia.errors[attr]).to include('não pode ficar em branco')
    end

    it 'não possui erro quando está preenchido' do
      params = {}
      params[attr] = 'Charizard'
      instancia = klass.new(params)
      instancia.valid?
      expect(instancia.errors[attr]).to be_empty
    end
  end
end
