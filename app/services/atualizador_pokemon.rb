class AtualizadorPokemon

  def initialize(pokemon)
    @pokemon = pokemon
  end

  def update!
    sleep 10
  end

  private

    attr_reader :pokemon
end

