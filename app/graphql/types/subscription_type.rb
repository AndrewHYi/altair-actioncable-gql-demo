# frozen_string_literal: true

module Types
  class SubscriptionType < GraphQL::Schema::Object
    field :pancake_was_flipped, subscription: Subscriptions::PancakeWasFlipped
  end
end
