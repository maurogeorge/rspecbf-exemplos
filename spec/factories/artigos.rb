# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artigo do
    sequence(:titulo, 'a') { |n| "Diversas dicas do RSpec #{n}" }
    conteudo { "Conteudo do artigo #{titulo}. Approved: #{aprovado}" }
  end
end
