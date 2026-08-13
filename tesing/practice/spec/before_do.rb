require "rspec"
RSpec.describe "Before" do
  before do
    puts "BEFORE"
  end

  after do
    puts "AFTER"
  end

  it "test one" do
    puts "test one"
  end

  it "test two" do
    puts "test two"
  end
end