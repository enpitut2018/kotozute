class UserVoice < ApplicationRecord
  belongs_to :lecture
  validates :comment, presence: true
  default_scope -> { order( created_at: :desc) }
end
