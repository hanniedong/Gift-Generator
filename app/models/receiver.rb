class Receiver < ApplicationRecord

  has_many :gifts, foreign_key: :receiver_id
  accepts_nested_attributes_for :gifts, :allow_destroy => true
end
