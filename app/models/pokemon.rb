class Pokemon < ActiveRecord::Base

  validates :ataque, presence: true

  def nome_completo
    "#{nome} - #{id_nacional}"
  end
end
