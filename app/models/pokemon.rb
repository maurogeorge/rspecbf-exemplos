class Pokemon < ActiveRecord::Base


  scope :escolhidos_ontem, -> { where(escolhido_em: 1.day.ago.midnight..Time.zone.now.midnight) }
end
