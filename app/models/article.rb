class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  validates :body, :title, presence: true
  
  def excerpt(body)
    excerptarray = body.split("")
    excerptarray[0...29].join("")
  end
  
  def relative_length
  end
  
end
