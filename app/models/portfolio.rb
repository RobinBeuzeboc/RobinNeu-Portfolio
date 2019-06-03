class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
#plusieurs atttributs, mais rejette si le nom est blanc/vide 
#technologies_attributes:[{},{},{}]  key/value pairs ensemble de paires entre clé et valeurs => hash

  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image
  def self.angular
  	where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby') }

  after_initialize :set_defaults

  def set_defaults
  	self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
	  self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
# pareil que => 
# if self.main_image = nil
# 	self.main_image = "https://via.placeholder.com/600x400"
# end		