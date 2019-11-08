class Interaction < ApplicationRecord
  belongs_to :giver, class_name: 'User', foreign_key: :id
 belongs_to :receiver, class_name: 'User', foreign_key: :id


end
