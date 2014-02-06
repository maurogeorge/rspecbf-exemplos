require 'spec_helper'

describe Pokemon do

  it { should be_a(ActiveRecord::Base)  }

  describe '.escolhidos_ontem' do

    subject do
      Pokemon.escolhidos_ontem
    end

    before do
      hoje = Time.zone.local(2010, 3, 7, 12)
      Timecop.freeze(hoje)
    end

    after do
      Timecop.return
    end

    it 'tem o pokemon escolhido ontem' do
      pokemon_escolhido_ontem = create(:pokemon,
                                       escolhido_em: Time.zone.local(2010, 3, 6, 23, 59, 59))
      expect(subject).to include(pokemon_escolhido_ontem)
    end

    it 'não tem o pokemon escolhido hoje' do
      pokemon_escolhido_hoje = create(:pokemon,
                                      escolhido_em: Time.zone.local(2010, 3, 7, 15))
      expect(subject).to_not include(pokemon_escolhido_hoje)
    end

    it 'não tem o pokemon escolhido antes de ontem' do
      pokemon_escolhido_antes_de_ontem = create(:pokemon,
                                                escolhido_em: Time.zone.local(2010, 3, 5))
      expect(subject).to_not include(pokemon_escolhido_antes_de_ontem)
    end
  end

  describe '#nome_completo' do

   context 'quando possui nome e o id nacional' do

     subject(:pokemon) do
       Pokemon.new(nome: 'Charizard', id_nacional: 6)
     end

      it 'exibe o nome e o id nacional' do
        expect(pokemon.nome_completo).to eq('Charizard - 6')
      end
    end

    context 'quando não possui o nome e o id nacional' do

      subject do
        Pokemon.new
      end

      it 'é nil' do
        expect(subject.nome_completo).to be_nil
      end
    end
  end
end
