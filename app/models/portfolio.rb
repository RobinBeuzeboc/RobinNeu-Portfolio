class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
#plusieurs atttributs, mais rejette si le nom est blanc/vide 
#technologies_attributes:[{},{},{}]  key/value pairs ensemble de paires entre clé et valeurs => hash



  validates_presence_of :title, :body 
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def self.angular
  	where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby') }

end
