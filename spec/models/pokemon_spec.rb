require 'spec_helper'

describe Pokemon do

  describe '.escolhidos_ontem' do

    let(:hoje) do
      Time.zone.local(2010, 3, 7, 12)
    end

    let!(:pokemon_escolhido_hoje) do
      create(:pokemon, escolhido_em: Time.zone.local(2010, 3, 7, 15))
    end

    let!(:pokemon_escolhido_ontem) do
      create(:pokemon, escolhido_em: Time.zone.local(2010, 3, 6, 23, 59, 59))
    end

    let!(:pokemon_escolhido_antes_de_ontem) do
      create(:pokemon, escolhido_em: Time.zone.local(2010, 3, 5))
    end

    subject do
      Pokemon.escolhidos_ontem
    end

    it 'tem o pokemon escolhido ontem' do
      Timecop.freeze(hoje) do
        expect(subject).to include(pokemon_escolhido_ontem)
      end
    end

    it 'não tem o pokemon hoje' do
      Timecop.freeze(hoje) do
        expect(subject).to_not include(pokemon_escolhido_hoje)
      end
    end

    it 'não tem o pokemon escolhido antes de ontem' do
      Timecop.freeze(hoje) do
        expect(subject).to_not include(pokemon_escolhido_antes_de_ontem)
      end
    end
  end
end
