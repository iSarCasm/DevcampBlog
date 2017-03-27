class Portfolio < ApplicationRecord
  has_many :technologies

  accepts_nested_attributes_for :technologies,
    reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  default_scope -> { order(created_at: :desc) }
  scope :angular, -> { where(subtitle: "Angular") }
  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    3.times { self.technologies.build }
    self.main_image ||= Placeholder.image(width: 800, height: 200)
    self.thumb_image ||= Placeholder.image(width: 350, height: 200)
  end
end
