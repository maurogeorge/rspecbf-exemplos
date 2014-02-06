# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artigo do
    titulo 'Diversas dicas do RSpec'
    conteudo 'Contenteúdo de Diversas dicas do RSpec'

    factory :artigo_aprovado do
      aprovado true
    end

    factory :artigo_nao_aprovado do
      aprovado false
    end
  end
end
