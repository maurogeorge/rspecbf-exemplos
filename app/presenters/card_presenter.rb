class CardPresenter

  def initialize(objeto)
    @objeto = objeto
  end

  def show
    retorno = ''
    objeto.to_presenter.each do |atributo, valor|
      retorno += "<p>#{atributo}: #{valor}</p>"
    end
    retorno
  end

  private

    attr_reader :objeto
end
