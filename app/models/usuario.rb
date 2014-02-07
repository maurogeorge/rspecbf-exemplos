class Usuario < ActiveRecord::Base
  has_many :artigos, foreign_key: :autor_id, dependent: :destroy
end
