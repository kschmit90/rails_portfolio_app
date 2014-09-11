class Like < ActiveRecord::Base
   attr_accessible :ip_address, :liked, :article_id
   validates :article_id, uniqueness: true
   validates :article_id, :ip_address, presence: true
end
