# frozen_string_literal: true

module Types
  class PancakeType < Types::BaseObject
    include ActionView::Helpers::DateHelper

    field :id, ID, null: false
    field :flip_status, String, null: false
    field :flipped_ago, String, null: false

    def flipped_ago
      return "Never flipped" if object.flipped_at.blank?

      time_ago_in_words(object.flipped_at, include_seconds: true)
    end
  end
end
