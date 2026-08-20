# frozen_string_literal: true

require 'rspec'
require_relative '../lib/password_validator'

RSpec::Matchers.define :be_valid_password do
  match do |password|
    password.length >= 8 &&
      password.match?(/[A-Z]/) &&
      password.match?(/[0-9]/)
  end

  failure_message do |password|
    "expected #{password} to be a valid password"
  end
end

RSpec.describe PasswordValidator do
  describe '#valid?' do
    it 'check the valid password' do
      password = 'Password123'
      expect(password).to be_valid_password
    end

    it 'check the invalid password' do
      password = 'password'
      expect(password).not_to be_valid_password
    end
  end
end
