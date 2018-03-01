class Review < ApplicationRecord
  # Direct associations

  has_many   :pictures,
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

  validates :stars, :length => { :minimum => 1, :maximum => 5 }

end
