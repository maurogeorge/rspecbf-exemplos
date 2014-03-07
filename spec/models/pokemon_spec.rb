require 'spec_helper'

describe Pokemon do

  describe '.escolhidos_ontem' do

    let(:hoje) do
      Time.zone.local(2010, 3, 7, 12)
    end

    subject do
      Pokemon.escolhidos_ontem
    end

    it 'tem o pokemon escolhido ontem' do
      pokemon_escolhido_ontem = create(:pokemon,
                                       escolhido_em: Time.zone.local(2010, 3, 6, 23, 59, 59))
      Timecop.freeze(hoje) do
        expect(subject).to include(pokemon_escolhido_ontem)
      end
    end

    it 'não tem o pokemon escolhido hoje' do
      pokemon_escolhido_hoje = create(:pokemon,
                                      escolhido_em: Time.zone.local(2010, 3, 7, 15))
      Timecop.freeze(hoje) do
        expect(subject).to_not include(pokemon_escolhido_hoje)
      end
    end

    it 'não tem o pokemon escolhido antes de ontem' do
      pokemon_escolhido_antes_de_ontem = create(:pokemon,
                                                escolhido_em: Time.zone.local(2010, 3, 5))
      Timecop.freeze(hoje) do
        expect(subject).to_not include(pokemon_escolhido_antes_de_ontem)
      end
    end
  end
end
