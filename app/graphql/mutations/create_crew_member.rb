# frozen_string_literal: true

module Mutations
  class CreateCrewMember < BaseMutation
    argument :name, String, required: true
    argument :agency, Types::AgencyEnumType, required: true
    argument :wikipedia, String, required: false
    argument :launches, [ID], required: false

    field :crew, Types::CrewType, null: false

    def resolve(name:, agency:, wikipedia: nil, launches: [])
      crew = Crew.new(
        name: name,
        agency: agency,
        wikipedia: wikipedia,
        launches: launches
      )

      if crew.save
        { crew: crew }
      else
        raise GraphQL::ExecutionError.new("Failed to create crew member")
      end
    end
  end
end
