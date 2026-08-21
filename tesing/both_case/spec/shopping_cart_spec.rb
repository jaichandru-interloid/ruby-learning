# frozen_string_literal: true

require 'rspec'
require_relative '../lib/shopping_cart'

RSpec.describe ShoppingCart do
  let(:shopping) { ShoppingCart.new }

  describe '#add_item' do
    it 'check adding the data' do
      shopping.add_item('Apple', 20, 5)
      shopping.add_item('Biscuit', 25, 3)

      expect(shopping.item_count).to eq(8)
      expect(shopping.total).to eq(175)
    end
  end

  describe '#delete' do
    it 'Delete items' do
      shopping.add_item('Apple', 20, 5)
      shopping.add_item('Biscuit', 25, 3)

      shopping.remove_item('Apple')

      expect(shopping.item_count).to eq(3)
    end
  end

  describe '#total' do
    it 'check the total of the cart' do
      shopping.add_item('Apple', 20, 5)
      shopping.add_item('Biscuit', 25, 3)

      expect(shopping.total).to eq(175)
    end

    it 'return zero if the cart is empty' do
      expect(shopping.total).to eq(0)
    end
  end

  describe '#edit_data' do
    it 'Edit the quantity' do
      shopping.add_item('Apple', 25, 10)
      shopping.edit_data('Apple', 6)

      expect(shopping.item_count).to eq(6)
    end

    it 'raise error trying to unknown item in cart' do
      shopping.add_item('Apple', 25, 20)

      expect do
        shopping.edit_data('Orange', 25)
      end.to raise_error(KeyError, 'Item:Not found')
    end
  end

  describe '#empty?' do
    it 'check whether empty cart' do
      expect(shopping.empty?).to be true
    end

    it 'check its not empty cart' do
      shopping.add_item('Apple', 25, 20)

      expect(shopping.empty?).to be false
    end
  end
end