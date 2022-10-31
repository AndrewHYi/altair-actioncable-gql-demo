# frozen_string_literal: true

module Mutations
  class CreateCreateMember < BaseMutation
    argument :name, String, required: true
    argument :agency, String, required: true
    argument :name, String, required: true
  end
end
