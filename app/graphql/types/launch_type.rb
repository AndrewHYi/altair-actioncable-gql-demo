# frozen_string_literal: true

module Types
  class LaunchType < Types::BaseObject
    field :id, ID, null: false
    field :date_utc, String, null: false
    field :crew, [CrewType], null: false
  end
end
