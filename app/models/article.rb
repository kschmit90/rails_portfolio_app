class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  validates :body, :title, presence: true
  has_many :likes
  
  def excerpt(body)
    excerptarray = body.split("")
    excerptarray[0...29].join("")
  end
  
  def relative_length
  end
  
end
