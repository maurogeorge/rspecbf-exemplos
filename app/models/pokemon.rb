class Pokemon < ActiveRecord::Base

  validates :nome, presence: true
end
