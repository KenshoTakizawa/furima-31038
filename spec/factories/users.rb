FactoryBot.define do
  factory :user do
    nickname              {"tarou"}
    email                 {"sample@gmail.com"}
    password              {"1234567"}
    encrypted_password    {"1234567"}
    last_name           {"山田"}
    last_name_kana      {"ヤマダ"}
    first_name            {"太郎"}
    first_name_kana       {"タロウ"}
    birth_data             {"2000-01-01"}
  end
end
