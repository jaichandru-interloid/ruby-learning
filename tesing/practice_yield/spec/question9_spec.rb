# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question9'

RSpec.describe 'EachWithIndex' do
  describe '#each_with_index' do
    it 'puting the index for each' do
      expect { |block| each_with_index(%w[a b c], &block) }
        .to yield_successive_args(['a', 0],
                                  ['b', 1],
                                  ['c', 2])
    end
  end
end
