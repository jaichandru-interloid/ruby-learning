# frozen_string_literal: true

require 'rspec'
require_relative '../lib/employee'

RSpec.describe Employee do
  let(:employee) { Employee.new("John") }
  describe '#details' do
    it 'return employee details' do
      allow(employee).to receive(:department).and_return('HR')
      allow(employee).to receive(:salary).and_return(60_000)

      expect(employee.details).to eq('John - HR - 60000')
    end
  end
end
