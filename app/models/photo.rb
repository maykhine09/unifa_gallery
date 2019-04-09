class Photo < ApplicationRecord
  # include RemoteFileStorage
  default_scope { order(:created_at) }

  belongs_to :user, inverse_of: :photos, foreign_key: 'user_id'
  validates :title, uniqueness: true, presence: true

  # remote_file :photo do |config|
  #   config.store_path = -> { "#{user_id}/photos/" }
  # end
end
