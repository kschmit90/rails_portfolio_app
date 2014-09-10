class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  validates :body, :title, presence: true
end
