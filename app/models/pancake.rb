# frozen_string_literal: true

class Pancake < ApplicationRecord
  enum flip_status: { a_side: 0, b_side: 1 }

  def self.single
    first_or_create(flip_status: :a_side)
  end

  def self.flip!
    single.tap do |pancake|
      new_side = pancake.a_side? ? :b_side : :a_side
      pancake.update!(flip_status: new_side, flipped_at: Time.current)
    end
  end
end
