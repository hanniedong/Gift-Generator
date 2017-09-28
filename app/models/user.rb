class User < ApplicationRecord
  has_secure_password

  has_many :gifts, foreign_key: :giver_id
  has_many :receivers, through: :gifts
end
