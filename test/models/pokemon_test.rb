require 'test_helper'

class PokemonTest < ActiveSupport::TestCase

  test 'exibe o nome e o id nacional' do
    pokemon = Pokemon.new(nome: 'Charizard', id_nacional: 6)
    assert_equal 'Charizard - 6', pokemon.nome_completo
  end
end
