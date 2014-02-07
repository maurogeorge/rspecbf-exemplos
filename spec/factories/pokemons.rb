# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pokemon do
    id_nacional 6
    nome 'Charizard'
    ataque 84
    defesa 78
  end
end
