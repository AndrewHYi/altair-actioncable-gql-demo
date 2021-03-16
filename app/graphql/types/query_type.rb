# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :pancake, PancakeType, null: false
    field :dummy, PancakeType, null: true

    def pancake
      Pancake.single
    end
  end
end
