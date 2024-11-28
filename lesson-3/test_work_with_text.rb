require 'rspec'
require './work_with_text.rb'

RSpec.describe 'Method work_with_text' do
  it 'input "CkCs" wait 16' do
    expect(work_with_text('CkCs')).to eq(16)
  end
  it 'input "oOoOcS" wait 64' do
    expect(work_with_text('oOoOcS')).to eq(64)
  end
  it 'input "1234" wait "4321"' do
    expect(work_with_text('1234')).to eq('4321')
  end
end