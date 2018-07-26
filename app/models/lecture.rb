class Lecture < ApplicationRecord   
    has_many :user_voices, dependent: :destroy
end
