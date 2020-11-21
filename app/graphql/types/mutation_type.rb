# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :flip_pancake, mutation: Mutations::FlipPancake
  end
end
