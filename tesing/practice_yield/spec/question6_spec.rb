# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question6'

RSpec.describe 'ProcessUser' do
  describe '#process_user' do
    it 'yield to block the validate user' do
      active_user = { name: 'John', active: true }
      expect { |block| process_user(active_user, &block) }
        .to yield_with_args(active_user)
    end
    it 'yielding the inactive user' do
      inactive_user = { name: 'John', active: false }
      expect { |block| process_user(inactive_user, &block) }
        .not_to yield_control
    end
  end
end
