# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_crew_member, mutation: Mutations::CreateCrewMember
    field :destroy_crew_member, mutation: Mutations::DestroyCrewMember
    field :update_crew_member, mutation: Mutations::UpdateCrewMember

    field :create_crew_member_with_subscription, mutation: Mutations::CreateCrewMember
  end
end
