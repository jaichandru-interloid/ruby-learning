class FileLike
  def initialize(content)
    @content = content
  end

  def read; @content; end
end

class StringLike
  def initialize(text)
    @text=text
  end

  def read; @text; end
end

def print_data(source); source.read; end

file=FileLike.new("This is file")
text=StringLike.new("This is string")

[file, text].each do |i|; puts print_data(i); end