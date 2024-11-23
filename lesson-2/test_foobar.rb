require 'rspec'
require './foobar.rb'

RSpec.describe "Method foobar" do
  it "foobar with num1 = 20 and num2 = 12" do
    expect(foobar(20, 12)).to eq(12)
  end
  it "foobar with num1 = 5 and num2 = 20" do
    expect(foobar(5, 20)).to eq(20)
  end
  it "foobar with num1 = 15 and num2 = 16" do
    expect(foobar(15, 16)).to eq(31)
  end
end