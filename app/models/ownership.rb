class Ownership < ApplicationRecord
  # Direct associations

  has_many   :replies,
             :foreign_key => "owner_id",
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

end
