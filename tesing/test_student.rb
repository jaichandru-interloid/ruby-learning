# frozen_string_literal: true

require 'rspec'
require_relative './student'

RSpec.describe Student do
  it 'returns the name' do
    student = Student.new

    expect(student.name).to eq('John')
  end
end
