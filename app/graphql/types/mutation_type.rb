# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_crew_member, mutation: Mutations::CreateCrewMember
    field :destroy_crew_member, mutation: Mutations::DestroyCrewMember
    field :update_crew_member, mutation: Mutations::UpdateCrewMember
  end
end
