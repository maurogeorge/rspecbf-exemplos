# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artigo do
    titulo 'Diversas dicas do RSpec'
    conteudo 'Contenteúdo de Diversas dicas do RSpec'

    trait :aprovado do
      aprovado true
    end

    trait :nao_aprovado do
      aprovado false
    end

    trait :titulo_maiusculo do
      titulo 'DIVERSAS DICAS DO RSPEC'
    end

    factory :artigo_aprovado_titulo_maiusculo,
      traits: [:aprovado, :titulo_maiusculo]
  end
end
