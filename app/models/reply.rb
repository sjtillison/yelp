class Reply < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :foreign_key => "owner_id"

  # Indirect associations

  # Validations

end
