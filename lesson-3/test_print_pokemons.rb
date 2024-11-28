require 'rspec'
require './print_pokemons.rb'

RSpec.describe 'Method print_pokemons' do
  it 'num = 1: Pikachu Yellow' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Pikachu', 'Yellow')
    first_arr = [{name: 'Pikachu', color: 'Yellow'}]
    expect(print_pokemons(1)).to eq(first_arr)
  end
  it 'num = 3: Pika Yellow, Chika Red, Nika Blue' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Pika', 'Yellow', 'Chika', 'Red', 'Nika', 'Blue')
    second_arr = [{name: 'Pika', color: 'Yellow'}, {name: 'Chika', color: 'Red'}, {name: 'Nika', color: 'Blue'}]
    expect(print_pokemons(3)).to eq(second_arr)
  end
end