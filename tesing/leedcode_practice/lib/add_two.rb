# frozen_string_literal: true

def two_sum(nums, target)
  nums.each_with_index do |_num, index|
    (index + 1...nums.length).each do |i|
      return [index, i] if nums[index] + nums[i] == target
    end
  end
  nil
end
