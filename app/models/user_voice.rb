class UserVoice < ApplicationRecord
  belongs_to :lecture
  default_scope -> { order( created_at: :desc) }
end
