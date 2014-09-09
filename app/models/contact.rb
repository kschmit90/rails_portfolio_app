class Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :message, :phone, :website
  validates :email, :first_name, :last_name, :message, presence: true
end
