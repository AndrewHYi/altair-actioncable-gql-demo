# frozen_string_literal: true

class Crew
  include Mongoid::Document

  field :name
  field :agency
  field :wikipedia
  field :status
  field :launches

  def launches
    Launch.in(id: self[:launches])
  end
end
