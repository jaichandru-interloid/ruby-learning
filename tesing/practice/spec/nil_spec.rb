# frozen_string_literal: true

require 'rspec'
RSpec.describe 'NilTest' do
  it 'check the nil value' do
    value = nil
    expect(value).to be_nil
  end

  it 'check the value not nil' do
    value = 'John'
    expect(value).not_to be_nil
  end
end
