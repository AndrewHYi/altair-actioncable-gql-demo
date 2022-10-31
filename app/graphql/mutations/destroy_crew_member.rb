# frozen_string_literal: true

module Mutations
  class DestroyCrewMember < BaseMutation
    argument :id, ID, required: true

    field :crew, Types::CrewType, null: true

    def resolve(id:)
      crew = Crew.find_by(id: id)
      crew&.destroy

      { crew: crew }
    end
  end
end
