require "rspec"
require_relative "../lib/mocking"

RSpec.describe "Mocking" do
  let(:user) {User.new}
  let(:welcome) {Welcome.new}

  it "Creates a welcome message" do
    allow(user).to receive(:name).and_return("John")
    expect(welcome.message(user)).to eq("Hello, John")
  end
end