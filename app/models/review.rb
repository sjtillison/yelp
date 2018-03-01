class Review < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

  validates :stars, :length => { :minimum => 1, :maximum => 5 }

end
