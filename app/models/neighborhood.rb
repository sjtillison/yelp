class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :presence => true

end
