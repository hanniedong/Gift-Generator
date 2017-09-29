class Gift < ApplicationRecord
  belongs_to :giver, class_name: :User
  belongs_to :receiver
end
