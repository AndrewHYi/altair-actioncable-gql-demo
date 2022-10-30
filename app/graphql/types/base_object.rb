# frozen_string_literal: true

module Types
  class BaseObject < GraphQL::Schema::Object
    field_class Types::BaseField

    # example: Relay-style pagination / cursor
    connection_type_class Types::BaseConnection
  end
end
