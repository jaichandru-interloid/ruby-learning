# frozen_string_literal: true

require 'rspec'
require_relative '../lib/shopping_cart'

RSpec.describe ShoppingCart do
  let(:cart) { ShoppingCart.new }

  subject { cart }

  describe '#add' do
    it 'Add items in the cart' do
      subject.add('Iphone')
      expect(subject.total_items).to eq(1)
    end
  end

  describe '#remove' do
    it 'Remove the item from the cart' do
      subject.add('Iphone')
      subject.remove('Iphone')
      expect(subject.total_items).to eq(0)
    end
  end

  describe '#total_items' do
    it 'return the number of items' do
      subject.add('Iphone')
      subject.add('ear phone')
      subject.add('Smart watch')

      expect(subject.total_items).to eq(3)
    end
  end

  describe '#empty?' do
    it 'return the cart is empty' do
      expect(subject.empty?).to be true
    end

    it 'return the cart is not empty' do
      subject.add('Laptop')
      expect(subject.empty?).to be false
    end
  end
end
