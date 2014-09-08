class ClassProject < ActiveRecord::Base
  attr_accessible :description, :github, :name, :other_url, :primary_language
  validates :name, :description, :github, :primary_language, presence: true
  validates :name, uniqueness: true
end
