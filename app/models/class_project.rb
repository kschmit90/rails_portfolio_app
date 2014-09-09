class ClassProject < ActiveRecord::Base
  attr_accessible :description, :github, :name, :other_url, :summary
  validates :name, :description, :github, :summary, presence: true
  validates :name, uniqueness: true
end
