class Portfolio < ApplicationRecord
  has_many :technologies

  accepts_nested_attributes_for :technologies,
    reject_if: lambda { |attrs| attrs['name'].blank? }

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
