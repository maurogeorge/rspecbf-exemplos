class Usuario < ActiveRecord::Base
  has_many :artigos, dependent: :destroy
end
