# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario, aliases: [:autor] do
    nome 'Mauro'
    email { "#{nome}@helabs.com.br" }

    trait :com_artigo do
      ignore do
        total_de_artigos 3
      end

      after(:create) do |usuario, evaluator|
        create_list(:artigo, evaluator.total_de_artigos, autor: usuario)
      end
    end
  end
end
