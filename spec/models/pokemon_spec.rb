require 'spec_helper'

describe Pokemon do

  describe '.escolhidos_ontem' do

    subject do
      Pokemon.escolhidos_ontem
    end

    before do
      hoje = Time.zone.local(2010, 3, 7, 12)
      Timecop.freeze(hoje)
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

  describe '.outro_metodo' do

    it 'faz alguma coisa' do
      puts Time.zone.now
    end
  end
end
