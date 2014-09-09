class Link < ActiveRecord::Base
  attr_accessible :name, :url
  validates :url, uniqueness: true
  validates :name, :url, presence: true
end
