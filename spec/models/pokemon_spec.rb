require 'spec_helper'

describe Pokemon do

  describe 'validações' do

    describe '#nome' do

      it 'possui erro quando está vázio' do
        pokemon = Pokemon.new
        pokemon.valid?
        expect(pokemon.errors[:nome]).to include('não pode ficar em branco')
      end

      it 'não possui erro quando está preenchido' do
        pokemon = Pokemon.new(nome: 'Charizard')
        pokemon.valid?
        expect(pokemon.errors[:nome]).to be_empty
      end
    end
  end
end
