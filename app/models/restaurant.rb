class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :restaurant_owners,
             :class_name => "Ownership",
             :dependent => :destroy

  has_many   :descriptors,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
