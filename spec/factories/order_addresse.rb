FactoryBot.define do
  factory :order_addresse do
    # number {4242424242424242}
    # exp_month {12}
    # exp_year {24}
    # cvc {123}
    postal_code {"185-0024"}
    destination_id {3}
    city {"国分寺市"}
    house_number {"2-7-2-1220"}
    phone_number {"08012121212"}
    token {"tok_abcdefghijk00000000000000000"}
  end
end