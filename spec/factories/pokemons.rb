# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pokemon do
    id_nacional 6
    nome 'Charizard'
    defesa 78
    ataque 84
  end
end
