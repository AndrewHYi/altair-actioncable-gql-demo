# frozen_string_literal: true

module Subscriptions
  class PancakeWasFlipped < Subscriptions::BaseSubscription
    field :pancake, Types::PancakeType, null: false

    def resolve
      { pancake: Pancake.single }
    end
  end
end
