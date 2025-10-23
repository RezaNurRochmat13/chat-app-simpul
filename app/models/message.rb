class Message < ApplicationRecord
  belongs_to :chatroom

  after_create_commit { broadcast_append_to chatroom }

  validates :content, presence: true
end
