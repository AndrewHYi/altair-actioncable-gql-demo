# frozen_string_literal: true

class Api
  include HTTParty

  base_uri "https://api.spacexdata.com/v4/"

  def self.crews
    get("/crew")
  end

  def self.launches
    get("/launches")
  end
end
