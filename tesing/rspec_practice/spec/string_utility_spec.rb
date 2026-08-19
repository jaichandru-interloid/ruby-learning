# frozen_string_literal: true

require 'rspec'
require_relative '../lib/string_utility'

RSpec.describe StringUtility do
  let(:string) { StringUtility.new }
  describe 'reverse' do
    it 'check with a string' do
      expect(string.reverse('text')).to eq('txet')
    end
    it 'Check with integer' do
      expect { string.reverse(1234) }.to raise_error(NoMethodError)
    end
  end

  describe "String operations" do
    it "case converstion" do
      expect(string.uppercase("hello")).to eq("HELLO")
    end

    it "String length" do
      expect(string.length("ruby")).to eq(4)
    end

    it "length with  integer" do
      expect{string.length(1234)}.to raise_error(NoMethodError)
    end

    it"return empty string" do
      expect(string.empty?("")).to be true
    end

    it"return a non-empty string" do
      expect(string.empty?("Hello")).to be false
    end
  end
end
