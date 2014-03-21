class Pokemon < ActiveRecord::Base

  validates :nome, :id_nacional, presence: true
  validates :id_nacional, numericality: { only_integer: true, greater_than: 0 }
  validates :ataque, presence: true, if: :aprovado?
end
