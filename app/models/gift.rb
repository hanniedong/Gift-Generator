class Gift < ApplicationRecord
  belongs_to :giver
  belongs_to :receiver
end
