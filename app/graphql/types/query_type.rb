# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :crews, [CrewType], null: false
    field :launches, [LaunchType], null: false

    field :crew, CrewType, null: true do
      argument :id, ID, required: true
    end

    field :launch, LaunchType, null: true do
      argument :id, ID, required: true
    end

    def crew(id:)
      Crew.find_by(id: id)
    end

    def crews
      Crew.all
    end

    def launch(id:)
      Launch.find_by(id: id)
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
