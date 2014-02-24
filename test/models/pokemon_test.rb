require 'test_helper'

class PokemonTest < ActiveSupport::TestCase

  def test_exibe_o_nome_e_o_id_nacional
    pokemon = Pokemon.new(nome: 'Charizard', id_nacional: 6)
    assert_equal 'Charizard - 6', pokemon.nome_completo
  end
end
