# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :crews, CrewType.connection_type, null: false
    field :launches, LaunchType.connection_type, null: false

    def crews
      Crew.all
    end

    def launches
      Launch.all
    end
  end
end
