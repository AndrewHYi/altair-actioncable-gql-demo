# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # field :pancake, PancakeType, null: false

    def pancake
      Pancake.single
    end
  end
end
