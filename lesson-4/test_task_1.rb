require 'rspec'
require './task_1.rb'

RSpec.describe 'Task 1' do
  let(:file_text) do
    <<-String
1-ая строка
2-ая строка текста
3-ая строка текста в файле
    String
  end
  let(:pattern_file_text) do
    <<-String
2-ая строка текста
3-ая строка текста в файле
    String
  end

  it '#index' do
    expect{ index }.to output(file_text).to_stdout
  end

  it '#find(1)' do
    expect{ find(1) }.to output("2-ая строка текста\n").to_stdout
  end

  it '#find(100)' do
    expect{ find(100) }.to output("Нет такого id\n").to_stdout
  end

  it "#where('текста')" do
    expect{ where('текста') }.to output(pattern_file_text).to_stdout
  end
  
end