# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :veiculo do
    placa "MyString"
    hodometro "MyString"
    combustivel "MyString"
    peso "MyString"
  end
end
