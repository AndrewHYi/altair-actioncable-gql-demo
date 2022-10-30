# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :crews, [CrewType], null: false
    field :launches, [LaunchType], null: false

    def crews
      Crew.all
    end

    def launches
      Launch.all
    end
  end
end
