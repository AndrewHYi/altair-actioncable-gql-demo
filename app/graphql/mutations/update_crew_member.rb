# frozen_string_literal: true

module Mutations
  class UpdateCrewMember < BaseMutation
    argument :id, ID, required: true
    argument :agency, Types::AgencyEnumType, required: true

    field :crew, Types::CrewType, null: false

    def resolve(id:, agency:)
      crew = Crew.find(id)
      if crew.update(agency: agency)
        { crew: crew }
      else
        raise GraphQL::ExecutionError.new("Failed to update crew member")
      end
    end
  end
end
