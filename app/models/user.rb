class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  VALID_EMAIL_REGEX = /.*\.tsukuba\.ac\.jp\z/

  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
