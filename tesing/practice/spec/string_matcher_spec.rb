require "rspec"

message = "Welcome to Ruby"

RSpec.describe "StringMatchers" do
  it "check the string is included?" do
    expect(message).to include("to")
  end

  it "Check the match" do
    expect(message).to match(/Ruby/)
  end

  it "Check start with the string" do
    expect(message).to start_with("Welcome")
  end

  it "Check end with the string" do
    expect(message).to end_with("Ruby")
  end
end