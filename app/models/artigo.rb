class Artigo < ActiveRecord::Base
  belongs_to :autor, class_name: 'Usuario'
end
