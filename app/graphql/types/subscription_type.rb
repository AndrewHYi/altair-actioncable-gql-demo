# frozen_string_literal: true

module Types
  class SubscriptionType < GraphQL::Schema::Object
    field :crew_member_created, subscription: Subscriptions::CrewMemberCreated
  end
end
