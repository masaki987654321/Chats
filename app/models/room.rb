class Room < ApplicationRecord
    has_many :remarks, dependent: :destroy
    validates :name, presence: true ,length: { maximum: 20 }
    validates :ip, presence: true
    after_create_commit { RoomBroadcastJob.perform_later self }
end
