FactoryBot.define do
  factory :item do
    name        {"item"}
    image       {Rack::Test::UploadedFile.new(File.join(Rails.root, "spec/fixtures/test.png"))}
    price       {"2000"}
    category_id {"1"}
    color_id    {"1"}
    user_id     {"1"}
  end
end