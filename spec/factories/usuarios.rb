# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario, aliases: [:autor] do
    nome 'Mauro'
    email { "#{nome}@helabs.com.br" }
  end
end
