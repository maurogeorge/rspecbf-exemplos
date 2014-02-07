# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artigo do
    titulo 'Diversas dicas do RSpec'
    conteudo { "Conteudo do #{titulo}" }
    autor

    trait :aprovado do
      aprovado true
    end

    factory :artigo_aprovado, traits: [:aprovado]
  end
end
