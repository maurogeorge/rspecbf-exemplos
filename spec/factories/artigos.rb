# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artigo do
    titulo 'Diversas dicas do RSpec'
    conteudo 'Contenteúdo de Diversas dicas do RSpec'
    created_at { 2.days.ago }
  end
end
