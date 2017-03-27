class Portfolio < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :angular, -> { where(subtitle: "Angular") }
  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image(width: 800, height: 200)
    self.thumb_image ||= Placeholder.image(width: 350, height: 200)
  end
end
