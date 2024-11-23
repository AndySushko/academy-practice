require 'rspec'
require './greeting.rb'

RSpec.describe "Method greeting" do
  it "greeting with Peter" do
    expect(greeting('Питер', 'Паркер', 16)).to eq("Привет, Питер Паркер. Тебе меньше 18 лет, но начать учиться программировать никогда не рано")
  end
  it "greeting with Bruce" do
    expect(greeting('Брюс', 'Уэйн', 33)).to eq("Привет, Брюс Уэйн. Самое время заняться делом!")
  end
end
