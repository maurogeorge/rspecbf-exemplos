# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario, aliases: [:autor] do
    nome 'Mauro'
    email { "#{nome}@helabs.com.br" }

    trait :com_artigo do
      after(:create) do |usuario|
        create(:artigo, autor: usuario)
      end
    end
  end
end
