# frozen_string_literal: true

module Types
  class LaunchType < Types::BaseObject
    field :date_utc, ID, null: false
    field :crew, CrewType.connection_type, null: false
  end
end
