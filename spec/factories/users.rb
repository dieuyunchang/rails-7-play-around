FactoryBot.define do
  factory :user do
    sequence(:email) do |i|
      "hello#{Time.now.to_i}.#{i}@demomail.com"
    end

    password { "password" }
    jti { SecureRandom.hex(10) }
  end
end
