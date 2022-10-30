# frozen_string_literal: true

module Types
  class LaunchType < Types::BaseObject
    field :date_utc, ID, null: false
    field :crew, [CrewType], null: false
  end
end
