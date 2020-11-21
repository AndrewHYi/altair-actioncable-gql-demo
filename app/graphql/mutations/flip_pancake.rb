# frozen_string_literal: true

module Mutations
  class FlipPancake < BaseMutation
    field :pancake, Types::PancakeType, null: false

    def resolve
      { pancake: Pancake.flip! }
    end
  end
end
