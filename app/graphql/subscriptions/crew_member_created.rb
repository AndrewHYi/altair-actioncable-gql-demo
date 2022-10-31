# frozen_string_literal: true

module Subscriptions
  class CrewMemberCreated < Subscriptions::BaseSubscription
    field :crew, Types::CrewType, null: false

    def resolve
      { crew: crew }
    end

    def subscribe
      { crew: crew }
    end

    def update
      { crew: crew }
    end
  end
end
