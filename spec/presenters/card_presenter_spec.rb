require 'spec_helper'

describe CardPresenter do

  describe '#show' do

    it 'retorna um paragrafo por chave' do
      objeto = double('Um objeto')
      to_presenter = { nome: 'Mauro', idade: 24 }
      allow(objeto).to receive(:to_presenter).and_return(to_presenter)
      card_presenter = CardPresenter.new(objeto)
      expect(card_presenter.show).to eq(%{<p>nome: Mauro</p><p>idade: 24</p>})
    end
  end
end
