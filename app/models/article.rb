class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  validates :body, :draft, :title, presence: true
end
