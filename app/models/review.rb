class Review < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :stars, :length => { :minimum => 1, :maximum => 5 }

end
