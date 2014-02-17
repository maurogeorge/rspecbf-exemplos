class Pokemon < ActiveRecord::Base

  def nome_completo
    "#{nome} - #{id_nacional}"
  end
end
