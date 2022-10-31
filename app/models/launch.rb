# frozen_string_literal: true

class Launch
  include Mongoid::Document

  field :id
  field :date_utc
  field :crew

  def crew
    Crew.in(id: self[:crew].map { _1['crew'] })
  end
end
