# frozen_string_literal: true

require 'rspec'
require_relative '../lib/file_processor'

RSpec.describe FileProcessor do
  describe '#process' do
    it 'yield to the block' do
      processor = FileProcessor.new

      expect{|block| processor.process(&block)}.to yield_control
    end

    it "process the correct argument is passed to the block" do
      processor = FileProcessor.new

      expect {|block| processor.process(&block)}.to yield_with_args("file content")
    end
  end
end
