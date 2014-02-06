# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :titulo do |n|
    "Diversas dicas do RSpec #{n}"
  end

  factory :artigo do
    titulo
    conteudo { "Conteudo do artigo #{titulo}. Approved: #{aprovado}" }
  end
end
