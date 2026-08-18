def each_with_index(items)
  items.each_with_index do |item, index|
    yield item, index
  end
end