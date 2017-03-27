module Placeholder
  extend ActiveSupport::Concern

  def self.image(width:, height:)
    "http://placehold.it/#{width}x#{height}"
  end
end
