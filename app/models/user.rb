class User < ApplicationRecord
  # Direct associations

  has_many   :replies,
             :foreign_key => "owner_id",
             :dependent => :destroy

  has_many   :restaurant_owners,
             :class_name => "Ownership",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
