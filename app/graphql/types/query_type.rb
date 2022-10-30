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

    # API Proxy example
    # def crews
    #   Api.crews
    # end

    # def launches
    #   Api.launches
    # end
  end
end
