require 'spec_helper'

describe Pokemon do

  describe '.escolhidos_ontem' do

    let!(:pokemon_escolhido_hoje) do
      create(:pokemon, escolhido_em: Time.zone.local(2014, 3, 7, 15))
    end

    let!(:pokemon_escolhido_ontem) do
      create(:pokemon, escolhido_em: Time.zone.local(2014, 3, 6, 23, 59, 59))
    end

    let!(:pokemon_escolhido_antes_de_ontem) do
      create(:pokemon, escolhido_em: Time.zone.local(2014, 3, 5))
    end

    subject do
      Pokemon.escolhidos_ontem
    end

    it 'tem o pokemon escolhido ontem' do
      expect(subject).to include(pokemon_escolhido_ontem)
    end

    it 'não tem o pokemon hoje' do
      expect(subject).to_not include(pokemon_escolhido_hoje)
    end

    it 'não tem o pokemon escolhido antes de ontem' do
      expect(subject).to_not include(pokemon_escolhido_antes_de_ontem)
    end
  end
end
