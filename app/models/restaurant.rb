class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :descriptors,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
