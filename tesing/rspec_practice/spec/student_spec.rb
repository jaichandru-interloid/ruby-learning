# frozen_string_literal: true

require 'rspec'
require_relative '../lib/student'

RSpec.describe Student do
  let(:student) do
    Student.new('John', 69)
  end
  describe '#initialize' do
    it 'check details' do
      expect(student.name).to eq('John')
      expect(student.marks).to eq(69)
    end
  end

  describe '#passed?' do
    it 'check the student is passed' do
      expect(student.passed?).to be true
    end

    it 'check the student is failed' do
      failed = Student.new('Alex', 39)
      expect(failed.passed?).to be false
    end
  end

  describe '#grade' do
    it 'return A grade' do
      student = Student.new('John', 92)
      expect(student.grade).to eq('A')
    end

    it 'return B grade' do
      student = Student.new('John', 85)
      expect(student.grade).to eq('B')
    end

    it 'return C grade' do
      student = Student.new('John', 65)
      expect(student.grade).to eq('C')
    end

    it 'return D grade' do
      student = Student.new('John', 55)
      expect(student.grade).to eq('D')
    end

    it 'return F grade' do
      student = Student.new('John', 39)
      expect(student.grade).to eq('F')
    end
  end
end
