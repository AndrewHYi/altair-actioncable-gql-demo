# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :pancake, PancakeType, null: false
    field :test_field, String, null: false

    def pancake
      Pancake.single
    end

    def test_field
      "Just a test, toggle me off/on"
    end
  end
end
