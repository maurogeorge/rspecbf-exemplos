class Pokemon < ActiveRecord::Base

  def ataque_critico
    Random.rand(60..80)
  end
end
