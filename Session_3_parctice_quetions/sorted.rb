class Version
  include Comparable

  attr_reader :version

  def initialize(version)
    @version = version
  end

  def <=>(other)
    version.split(".").map(&:to_i) <=> other.version.split(".").map(&:to_i)
  end

  def to_s
    version
  end
end

versions = [
  Version.new("1.2.10"),
  Version.new("1.2.3"),
  Version.new("2.0"),
  Version.new("1.10"),
  Version.new("1.2")
]

sorted = versions.sort

puts sorted