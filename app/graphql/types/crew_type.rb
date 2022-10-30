# frozen_string_literal: true

module Types
  class CrewType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :agency, String, null: false
    field :wikipedia, String, null: true
    field :status, String, null: false
    field :launches, LaunchType.connection_type, null: false
  end
end
