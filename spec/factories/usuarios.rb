# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario, aliases: [:autor] do
    nome 'Mauro'
    email { "#{nome}@helabs.com.br" }

    trait :com_artigo do
      after(:create) do |usuario|
        create_list(:artigo, 3, autor: usuario)
      end
    end
  end
end
