require "rspec"
require_relative "../lib/vehicle"

RSpec.shared_examples "starts" do
  it "starts" do
    expect(subject.start).to eq("#{subject.class} started")
  end
end

RSpec.shared_examples "stops" do
  it "stops" do
    expect(subject.stop).to eq("#{subject.class} stopped")
  end
end

RSpec.describe Car do
  subject { Car.new }

  it_behaves_like "starts"
  it_behaves_like "stops"
end
RSpec.describe Bike do
  subject{Bike.new}

  include_examples "starts"
  include_examples "stops"
end
