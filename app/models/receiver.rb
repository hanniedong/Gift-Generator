class Receiver < ApplicationRecord
  has_many :gifts, foreign_key: :receiver_id
end
