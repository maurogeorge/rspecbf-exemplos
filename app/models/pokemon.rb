class Pokemon < ActiveRecord::Base

  validates :nome, :id_nacional, presence: true
end
