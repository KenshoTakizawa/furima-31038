FactoryBot.define do
  factory :item do
    name              {"tarou"}
    description                 {"トントンしたいよ"}
    price              {"12345"}
    category_id    {"2"}
    condition_id           {"2"}
    send_method_id      {"2"}
    destination_id            {"2"}
    delivery_period_id       {"2"}
    association :user

  end
end
